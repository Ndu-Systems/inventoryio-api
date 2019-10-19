namespace BFC.Core.Services.Domain.RetailTransaction.Logic
{
    using BFC.Core.Services.Domain.BusinessPartners.Logic;
    using BFC.Core.Services.Domain.Company.Logic.Company;
    using BFC.Core.Services.Domain.Company.Logic.MasterData;
    using BFC.Core.Services.Domain.Company.Logic.UsersAndProfiles.EzRemit;
    using BFC.Core.Services.Domain.Customers.Logic;
    using BFC.Core.Services.Domain.Models.Company.MasterData;
    using BFC.Core.Services.Domain.Models.Customers;
    using BFC.Core.Services.Domain.Models.ProductsAndServices;
    using BFC.Core.Services.Domain.Models.RetailTransaction;
    using BFC.Core.Services.Domain.ProductsAndServices.Logic;
    using BFC.Core.Services.Domain.RatesAndCurrencies.Logic;
    using BFC.Core.Shared.Enumerations.Library;
    using BFC.Core.Shared.Helpers;
    using Microsoft.Extensions.Logging;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    

    public class EzRemitReceiptLogic
    {
        private readonly ILogger<EzRemitReceiptLogic> logger;
        private readonly RetailTransactionBaseDomainLogic retailTransactionBaseDomain;
        private readonly ProductTypeDomainLogic productTypeDomainLogic;
        private readonly BranchDomainLogic branchDomainLogic;
        private readonly BusinessPartnerBranchDomainLogic businessPartnerBranchDomainLogic;
        private readonly BusinessPartnerDomainLogic businessPartnerdomainLogic;
        private readonly CountryDomainLogic countryDomainLogic;
        private readonly TillDomainLogic tillDomainLogic;
        private readonly CustomerDomainLogic customerDomainLogic;
        private readonly EzRemitUsersDomainLogic ezremitUserDomainLogic;
        private readonly ZoneDomainLogic zoneDomainLogic;
        private readonly CurrencyDomainLogic currencyDomainLogic;
        private readonly RetailTransactionRemittanceDomainLogic retailTransactionRemittanceDomainLogic;
        private readonly SourceOfFundsDomainLogic sourceOfFundsDomainLogic;
        private readonly PurposeOfTransactionDomainLogic purposeOfTransactionDomainLogic;
        private readonly BeneficiaryDomainLogic beneficiaryDomainLogic;
        private readonly SettlementDetailsDomainLogic settlementDetailsDomainLogic;
        private readonly IntermediaryDomainLogic intermediaryDomainLogic;
        private TerminatingPartyDomainLogic terminatingDomainLogic;

        public EzRemitReceiptLogic(
            Logger<EzRemitReceiptLogic> logger,
            RetailTransactionBaseDomainLogic retailTransactionBaseDomain,
            ProductTypeDomainLogic productTypeDomainLogic,
            BranchDomainLogic branchDomainLogic,
            BusinessPartnerBranchDomainLogic businessPartnerBranchDomainLogic,
            BusinessPartnerDomainLogic businessPartnerdomainLogic,
            CountryDomainLogic countryDomainLogic,
            TillDomainLogic tillDomainLogic,
            CustomerDomainLogic customerDomainLogic,
            EzRemitUsersDomainLogic ezremitUserDomainLogic,
            ZoneDomainLogic zoneDomainLogic,
            CurrencyDomainLogic currencyDomainLogic,
            RetailTransactionRemittanceDomainLogic retailTransactionRemittanceDomainLogic,
            SourceOfFundsDomainLogic sourceOfFundsDomainLogic,
            PurposeOfTransactionDomainLogic purposeOfTransactionDomainLogic,
            BeneficiaryDomainLogic beneficiaryDomainLogic,
            SettlementDetailsDomainLogic settlementDetailsDomainLogic,
            IntermediaryDomainLogic intermediaryDomainLogic,
            TerminatingPartyDomainLogic terminatingDomainLogic
            )
        {
            this.logger = logger;
            this.retailTransactionBaseDomain = retailTransactionBaseDomain;
            this.productTypeDomainLogic = productTypeDomainLogic;
            this.branchDomainLogic = branchDomainLogic;
            this.businessPartnerBranchDomainLogic = businessPartnerBranchDomainLogic;
            this.businessPartnerdomainLogic = businessPartnerdomainLogic;
            this.countryDomainLogic = countryDomainLogic;
            this.tillDomainLogic = tillDomainLogic;
            this.customerDomainLogic = customerDomainLogic;
            this.ezremitUserDomainLogic = ezremitUserDomainLogic;
            this.zoneDomainLogic = zoneDomainLogic;
            this.currencyDomainLogic = currencyDomainLogic;
            this.retailTransactionRemittanceDomainLogic = retailTransactionRemittanceDomainLogic;
            this.sourceOfFundsDomainLogic = sourceOfFundsDomainLogic;
            this.purposeOfTransactionDomainLogic = purposeOfTransactionDomainLogic;
            this.beneficiaryDomainLogic = beneficiaryDomainLogic;
            this.settlementDetailsDomainLogic = settlementDetailsDomainLogic;
            this.intermediaryDomainLogic = intermediaryDomainLogic;
            this.terminatingDomainLogic = terminatingDomainLogic;

        }
        public async System.Threading.Tasks.Task<RetailTransactionDetailViewModel> GetRetailTransactionDetailByTransactionAsync(string transactionNumber, bool isPayOutReceipt = false, string applicationType = null)
        {
            this.logger.Log(LogLevel.Information, $"GetRetailTransactionDetailByTransaction {transactionNumber}");

            RetailTransactionDetailViewModel retailTransactionModel;

            try
            {
                // Get Base Transaction and it's related entities
                retailTransactionModel = new RetailTransactionDetailViewModel { IsPayOutTransaction = isPayOutReceipt };

                var baseTransaction = this.retailTransactionBaseDomain.GetByTransactionNumber(transactionNumber);

                if (baseTransaction == null)
                {
                    return retailTransactionModel;
                }

                if (!string.IsNullOrEmpty(applicationType))
                {
                    if (applicationType.Equals(ApplicationType.EzRemit.ShortName, StringComparison.InvariantCultureIgnoreCase))
                    {
                        var productSearch = new ProductTypeSelectorSearchModel() { CommaDelimitedTransactionDefinition = TransactionDefinition.EzrRemittance.ShortName };

                        //var products = this.productsAndServicesV1Proxy.GetProductTypesByTransactionDefinitionSelector(productSearch)?.Select(product => product.Code).ToList();

                        var branch = this.branchDomainLogic.GetByBranchCode(productSearch.BranchCodeOfRequestForSearch);
                        var result = await this.productTypeDomainLogic.GetAllForSelector(productSearch, branch);
                        var products = result.Select(product => product.Code).ToList();



                        if (products == null || !products.Contains(baseTransaction.ProductCode))
                        {
                            return null;
                        }
                    }
                }

                if (!string.IsNullOrEmpty(baseTransaction.ProductCode))
                {
                    var productType = this.productTypeDomainLogic.GetByCode(baseTransaction.ProductCode);
                    retailTransactionModel.ProductTypeName = productType.Name;
                    retailTransactionModel.SecurityCodeConfigured = (productType.SecurityCodeIsRequired != null) ? productType.SecurityCodeIsRequired.Value : false;
                }

                retailTransactionModel.Branch = this.businessPartnerBranchDomainLogic.GetBusinessPartnerBranchByCode(baseTransaction.OriginatingParty?.OriginatingPartyLocationCode);

                retailTransactionModel.Customer = this.customerDomainLogic.GetCustomerByCorrelationId(baseTransaction.CustomerCorrelationId);

                retailTransactionModel.RetailTransation = baseTransaction;



                retailTransactionModel.BusinessDate = retailTransactionModel?.RetailTransation?.BusinessDate.FormatDateTime(Formatters.EZRemitShortDateTimeFormat);

                if (!string.IsNullOrEmpty(baseTransaction.OriginatingParty?.OriginatingTillCode))
                {
                    retailTransactionModel.Till =
                        this.tillDomainLogic.GetByTillCode(baseTransaction.OriginatingParty
                            ?.OriginatingTillCode);
                }

                if (!string.IsNullOrEmpty(baseTransaction.OriginatingParty?.OriginatingUserCorrelationId))
                {
                    retailTransactionModel.Cashier =
                        this.ezremitUserDomainLogic.GetUserByCorrelationId(
                            baseTransaction.OriginatingParty?.OriginatingUserCorrelationId);

                    retailTransactionModel.CashierName = retailTransactionModel.Cashier?.FirstNames + " " + retailTransactionModel.Cashier?.LastFamilyNames;
                }

                if (retailTransactionModel.Customer?.Address != null)
                {
                    CountryDomainModel country = null;

                    if (retailTransactionModel.Customer.Address.CountryCode != null)
                    {
                        country = this.countryDomainLogic.GetCountryByCode(retailTransactionModel.Customer.Address.CountryCode);
                    }

                    ZoneDomainModel state = null;

                    if (retailTransactionModel.Customer.Address.StateCode != null)
                    {
                        state = this.zoneDomainLogic.GetZoneByCode(retailTransactionModel.Customer.Address.StateCode);
                    }

                    retailTransactionModel.SenderAddress = retailTransactionModel.FormatAddressToString(
                        retailTransactionModel.Customer.Address,
                        country,
                        state);
                }

                if (retailTransactionModel.Customer?.Person != null)
                {
                    retailTransactionModel.SenderName = retailTransactionModel.Customer?.Person?.FirstNames + " " + retailTransactionModel.Customer?.Person?.MiddleName + " " +
                    retailTransactionModel.Customer?.Person?.LastNames;
                }
                else
                {
                    retailTransactionModel.SenderName = retailTransactionModel.Customer?.Organisation?.Name;
                }

                var identity = retailTransactionModel.Customer?.IdentityList?.FirstOrDefault(x => x.IsPrimary) ?? retailTransactionModel.Customer?.IdentityList?.FirstOrDefault();
                retailTransactionModel.SenderID = identity.IdentityTypeCode + " " + identity.Number;
                retailTransactionModel.SenderTelephone = retailTransactionModel.Customer?.Contact?.Telephone ?? retailTransactionModel.Customer?.Contact?.Cellphone;
                retailTransactionModel.SenderCardNo = retailTransactionModel.Customer?.LoyaltyCardNumber;
                retailTransactionModel.LocalCurrency = this.currencyDomainLogic.GetByCode(baseTransaction.OriginatingCurrencyCode);

                retailTransactionModel.PaymentDetails = new RetailTransactionPaymentDetailsUpdateOrInsertDomainModel
                {
                    Commission = baseTransaction.Commission.Value,
                    OtherFees = baseTransaction.Fees.Value
                };

                // Get Remittance Transaction based on type
                var remittanceTrade = this.retailTransactionRemittanceDomainLogic.GetByBaseTransactionId(baseTransaction.Id).FirstOrDefault();

                retailTransactionModel.RemittanceTradeViewModel = remittanceTrade;

                if (remittanceTrade != null)
                {
                    retailTransactionModel.PayInCurrency = this.currencyDomainLogic.GetByCode(remittanceTrade.PayInCurrency);
                    retailTransactionModel.PayOutCurrency = this.currencyDomainLogic.GetByCode(remittanceTrade.PayOutCurrency);

                    retailTransactionModel.PayInCurrencyString = retailTransactionModel.PayInCurrency.Code;
                    retailTransactionModel.PayOutCurrencyString = retailTransactionModel.PayOutCurrency.Code;

                    retailTransactionModel.TransactionReferenceNumber = (retailTransactionModel.SecurityCodeConfigured == true) ? remittanceTrade.SecurityReferenceCode : retailTransactionModel.RetailTransation.TransactionNumber;

                    var businessPartner = this.businessPartnerdomainLogic.GetBusinessPartner(remittanceTrade.BusinessPartnerCorrelationId);

                    if (businessPartner != null)
                    {
                        var branch = this.businessPartnerBranchDomainLogic.GetBusinessPartnerBranchByCorrelationId(remittanceTrade.BusinessPartnerBranchCorrelationId);

                        retailTransactionModel.PayOutAgentName = businessPartner.Name;
                        retailTransactionModel.PayOutAgentBranchName = branch.Name;
                        retailTransactionModel.PayOutAgentBranchContactNumber = branch.ContactPerson.MobileNumber;
                        retailTransactionModel.PayOutAgentContactPersonName = businessPartner.ContactPersonName + " " + businessPartner.ContactPersonLastName;

                        CountryDomainModel country = null;

                        if (branch.Address.Country != null)
                        {
                            country = this.countryDomainLogic.GetCountryByCode(branch.Address.Country);
                        }

                        ZoneDomainModel state = null;

                        if (branch.Address.StateOrProvince != null)
                        {
                            state = this.zoneDomainLogic.GetZoneByCode(branch.Address.StateOrProvince);
                        }

                        retailTransactionModel.PayOutAgentBranchAddress = retailTransactionModel.FormatAddressToString(
                        branch.Address,
                        country,
                        state);
                    }

                    if (!string.IsNullOrEmpty(baseTransaction.SourceOfFundsCorrelationId))
                    {
                        var businessPartnerFundSources = businessPartner?.FundSources?.FirstOrDefault(c => c.CorrelationId == baseTransaction.SourceOfFundsCorrelationId);

                        if (businessPartnerFundSources != null)
                        {
                            var model = new SourceOfFundsDomainModel
                            {
                                CorrelationId = businessPartnerFundSources.CorrelationId,
                                Code = businessPartnerFundSources.Code,
                                Name = businessPartnerFundSources.Name
                            };

                            retailTransactionModel.SourceOfFunds = model;
                        }

                        if (retailTransactionModel.SourceOfFunds == null)
                        {
                            retailTransactionModel.SourceOfFunds = this.sourceOfFundsDomainLogic.GetSourceOfFundsByCorrelationId(baseTransaction.SourceOfFundsCorrelationId);
                        }
                    }

                    if (!string.IsNullOrEmpty(baseTransaction.PurposeOfTransactionCorrelationId))
                    {
                        var busienssPartnerPurpose = businessPartner?.Purposes?.FirstOrDefault(c => c.CorrelationId == baseTransaction.PurposeOfTransactionCorrelationId);

                        if (busienssPartnerPurpose != null)
                        {
                            var model = new PurposeOfTransactionDomainModel
                            {
                                CorrelationId = busienssPartnerPurpose.CorrelationId,
                                Code = busienssPartnerPurpose.Code,
                                Name = busienssPartnerPurpose.Name
                            };

                            retailTransactionModel.PurposeTransaction = model;
                        }

                        if (retailTransactionModel.PurposeTransaction == null)
                        {
                            retailTransactionModel.PurposeTransaction = this.purposeOfTransactionDomainLogic.GetPurposeOfTransactionByCorrelationId(baseTransaction.PurposeOfTransactionCorrelationId);
                        }

                        retailTransactionModel.PurposeOfTransaction = retailTransactionModel.PurposeTransaction.Name;
                    }

                    if (!string.IsNullOrEmpty(remittanceTrade.BeneficiaryCorrelationId))
                    {
                        var beneficiary =
                            this.beneficiaryDomainLogic.GetBeneficiaryByCorrelationId(remittanceTrade.BeneficiaryCorrelationId);
                        retailTransactionModel.BeneficiaryDomainModel = beneficiary;

                        if (retailTransactionModel.BeneficiaryDomainModel != null)
                        {
                            if (retailTransactionModel.BeneficiaryDomainModel.Address != null)
                            {
                                CountryDomainModel country = null;

                                if (retailTransactionModel.BeneficiaryDomainModel.Address.CountryCode != null)
                                {
                                    country = this.countryDomainLogic.GetCountryByCode(retailTransactionModel.BeneficiaryDomainModel.Address.CountryCode);
                                }

                                ZoneDomainModel state = null;

                                if (retailTransactionModel.BeneficiaryDomainModel.Address.StateCode != null)
                                {
                                    state = this.zoneDomainLogic.GetZoneByCode(retailTransactionModel.BeneficiaryDomainModel.Address.StateCode);
                                }

                                if (country != null && state != null)
                                {
                                    retailTransactionModel.BeneficiaryBankBranchAddress = retailTransactionModel.FormatAddressToString(
                                        retailTransactionModel.BeneficiaryDomainModel.Address,
                                        country,
                                        state);
                                }
                            }
                        }

                        if (beneficiary != null)
                        {
                            var beneficiaryBankDetail = beneficiary.BeneficiaryBankDetail.FirstOrDefault(
                                x => x.CorrelationId == remittanceTrade.BeneficiaryBankAccountCorrelationId);

                            if (beneficiaryBankDetail != null)
                            {
                                retailTransactionModel.BeneficiaryDomainModel.BeneficiaryBankDetail = new List<BeneficiaryBankDetailDomainModel>();

                                retailTransactionModel.BeneficiaryDomainModel.BeneficiaryBankDetail.Add(beneficiaryBankDetail);

                                var beneficiaryBank = this.businessPartnerdomainLogic.GetBusinessPartner(beneficiaryBankDetail.BeneficiaryBankCorrelationId);

                                if (beneficiaryBank != null)
                                {
                                    if (!string.IsNullOrWhiteSpace(beneficiaryBankDetail.BranchCorrelationId))
                                    {
                                        var beneficiaryBranch = this.businessPartnerBranchDomainLogic.GetBusinessPartnerBranchByCorrelationId(beneficiaryBankDetail.BranchCorrelationId);

                                        if (beneficiaryBranch != null)
                                        {
                                            retailTransactionModel.BeneficiaryBankName = beneficiaryBankDetail.BankSwift; // beneficiaryBank.Name;
                                            retailTransactionModel.BeneficiaryBankBranchName = beneficiaryBankDetail.BranchSwiftName; //beneficiaryBranch.Name;
                                            retailTransactionModel.BeneficiaryBankBranchAddress = beneficiaryBankDetail.AddressSwift;
                                            if (beneficiaryBranch.Address != null)
                                            {
                                                CountryDomainModel country = null;

                                                if (beneficiaryBranch.Address.Country != null)
                                                {
                                                    country = this.countryDomainLogic.GetCountryByCode(
                                                        beneficiaryBranch.Address.Country);
                                                }

                                                ZoneDomainModel state = null;

                                                if (beneficiaryBranch.Address.StateOrProvince != null)
                                                {
                                                    state = this.zoneDomainLogic.GetZoneByCode(
                                                        beneficiaryBranch.Address.StateOrProvince);
                                                }

                                                if (country != null && state != null)
                                                {
                                                    retailTransactionModel.BeneficiaryBankBranchAddress = beneficiaryBankDetail.AddressSwift;
                                                    //retailTransactionModel.FormatAddressToString(
                                                    //    retailTransactionModel.BeneficiaryDomainModel.Address,
                                                    //    country,
                                                    //    state);
                                                }
                                            }
                                        }
                                    }

                                    var beneficiaryIdentity = retailTransactionModel.BeneficiaryDomainModel?.IdentityList?.FirstOrDefault(x => x.IsPrimary) ?? retailTransactionModel.BeneficiaryDomainModel?.IdentityList?.FirstOrDefault();
                                    retailTransactionModel.BeneficiaryName = beneficiary?.Person?.FirstNames + " " + beneficiary?.Person?.MiddleName + " " + beneficiary?.Person?.LastNames;
                                    retailTransactionModel.BeneficiaryID = beneficiaryIdentity.IdentityTypeCode + " " + beneficiaryIdentity.Number;
                                    retailTransactionModel.BeneficiaryTelephone = beneficiary.Contact?.Telephone;
                                    retailTransactionModel.BeneficiaryAccountNo = beneficiaryBankDetail.AccountNumber;
                                    retailTransactionModel.BeneficiaryBankCode = beneficiaryBankDetail.BankSwiftCode;
                                    retailTransactionModel.BeneficiaryBankName = beneficiaryBankDetail.BankSwift; // beneficiaryBank.Name;
                                    retailTransactionModel.BeneficiaryBankBranchName = beneficiaryBankDetail.BranchSwiftName; //beneficiaryBranch.Name;
                                    retailTransactionModel.BeneficiaryBankBranchAddress = beneficiaryBankDetail.AddressSwift;
                                    retailTransactionModel.BeneficiaryBankBranchAddress = beneficiaryBankDetail.AddressSwift;
                                    retailTransactionModel.BeneficiaryACIBAN = beneficiaryBankDetail.ACIBAN;

                                }

                                //retailTransactionModel.BeneficiaryBankName = beneficiaryBankDetail.BankSwiftCode;
                                //retailTransactionModel.BeneficiaryBankName = beneficiaryBankDetail.BankSwiftCode;
                            }
                        }
                    }

                }

                var settlementModel = this.settlementDetailsDomainLogic.GetByBaseTransactionId(baseTransaction.Id);

                retailTransactionModel.SettlementDetails = settlementModel;

                // Get Intermediary
                var intermediary = this.intermediaryDomainLogic.GetByRemittanceTransactionCorrelationId(retailTransactionModel.RemittanceTradeViewModel.CorrelationId);

                if (intermediary != null)
                {
                    retailTransactionModel.IntermediaryBankName = intermediary.Bank;
                    retailTransactionModel.IntermediaryAccountNo = intermediary.BankAccountNumber;
                    retailTransactionModel.IntermediaryBankBranchName = intermediary.Branch;
                    retailTransactionModel.IntermediarySwiftCode = intermediary.SwiftCode;
                }

                retailTransactionModel.Rate = retailTransactionModel.RemittanceTradeViewModel?.Rate.FormatDecimalUK(8);
                retailTransactionModel.Commission = retailTransactionModel.RemittanceTradeViewModel.CommissionAmount.FormatDecimalUK(retailTransactionModel.PayInCurrency.CurrencyDecimal ?? 2);

                retailTransactionModel.TotalAmountReceivedPaid = retailTransactionModel.SettlementDetails.TotalAmountReceivedPaid.FormatDecimalUK(retailTransactionModel.PayInCurrency.CurrencyDecimal ?? 2);
                retailTransactionModel.TotalSettlementValue = retailTransactionModel.SettlementDetails.TotalSettlementValue.FormatDecimalUK(retailTransactionModel.PayInCurrency.CurrencyDecimal ?? 2);

                retailTransactionModel.PayOutAmount = retailTransactionModel.RemittanceTradeViewModel.PayOutAmount.FormatDecimalUK(retailTransactionModel.PayOutCurrency.CurrencyDecimal ?? 2);
                retailTransactionModel.PayInAmount = retailTransactionModel.RemittanceTradeViewModel.PayInAmount.FormatDecimalUK(retailTransactionModel.PayInCurrency.CurrencyDecimal ?? 2);
                retailTransactionModel.SettlementAmount = retailTransactionModel.SettlementDetails.TotalSettlementValue.FormatDecimalUK(retailTransactionModel.PayInCurrency.CurrencyDecimal ?? 2);

                if (retailTransactionModel.IsPayOutTransaction)
                {
                    var transactionTerminatingParty = this.terminatingDomainLogic.GetTerminatingPartyForTransaction(transactionNumber);

                    if (transactionTerminatingParty != null)
                    {
                        var payOutProductType = this.productTypeDomainLogic.GetByCode(transactionTerminatingParty.TerminatingPayOutProductCode);
                        var payOutAgent = this.ezremitUserDomainLogic.GetUserByCorrelationId(transactionTerminatingParty.TerminatingPartyUserCorrelationId);
                        var businessPartner = this.businessPartnerdomainLogic.GetBusinessPartnerByCorrelationId(transactionTerminatingParty.TerminatingPartyBusinessPartnerCorrelationId);
                        var branch = this.businessPartnerBranchDomainLogic.GetBusinessPartnerBranchByCode(transactionTerminatingParty.TerminatingPartyLocationCode);

                        retailTransactionModel.ProductTypeName = payOutProductType.Name;
                        retailTransactionModel.PaidByAgent = $"{payOutAgent.FirstNames} {payOutAgent.LastFamilyNames}";
                        retailTransactionModel.CashierName = retailTransactionModel.PaidByAgent;
                        retailTransactionModel.PayOutAgentName = businessPartner.Name;
                        retailTransactionModel.PayOutAgentBranchName = branch.Name;
                        retailTransactionModel.PayOutReceiptText = "RECEIVE";
                    }
                }
            }
            catch (Exception ex)
            {
                this.logger.Log(LogLevel.Error, ex.ToString());
                throw;
            }

            return retailTransactionModel;
        }

    }
}
