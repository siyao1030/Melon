//
//  HandlerTypealiases.swift
//  Plaidster
//
//  Created by Willow Bellemore on 2016-01-17.
//  Copyright © 2016 Plaidster. All rights reserved.
//

import Foundation

public typealias AddUserHandler = (_ accessToken: String?, _ MFAType: PlaidMFAType?, _ MFA: [[String: AnyObject]]?, _ accounts: [PlaidAccount]?, _ transactions: [PlaidTransaction]?, _ error: NSError?) -> (Void)
public typealias RemoveUserHandler = (_ message: String?, _ error: NSError?) -> (Void)

public typealias SubmitMFAHandler = (_ MFAType: PlaidMFAType?, _ MFA: [[String: AnyObject]]?, _ accounts: [PlaidAccount]?, _ transactions: [PlaidTransaction]?, _ error: NSError?) -> (Void)
public typealias FetchUserBalanceHandler = (_ accounts: [PlaidAccount], _ error: NSError?) -> (Void)
public typealias FetchUserTransactionsHandler = (_ transactions: [PlaidTransaction], _ error: NSError?) -> (Void)
public typealias FetchCategoriesHandler = (_ categories: [PlaidCategory], _ error: NSError?) -> (Void)
public typealias FetchInstitutionsHandler = (_ institutions: [PlaidInstitution], _ error: NSError?) -> (Void)
public typealias FetchLongtailInstitutionsHandler = (_ institutions: [PlaidInstitution], _ totalCount: Int, _ error: NSError?) -> (Void)
public typealias SearchInstitutionsHandler = (_ institutions: [PlaidSearchInstitution], _ error: NSError?) -> (Void)
