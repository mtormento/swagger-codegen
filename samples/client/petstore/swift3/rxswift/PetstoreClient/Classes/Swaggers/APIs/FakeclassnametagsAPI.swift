//
// FakeclassnametagsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import RxSwift



open class FakeclassnametagsAPI: APIBase {
    /**
     To test class name in snake case
     
     - parameter body: (body) client model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testClassname(body: Client, completion: @escaping ((_ data: Client?,_ error: Error?) -> Void)) {
        testClassnameWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     To test class name in snake case
     
     - parameter body: (body) client model 
     - returns: Observable<Client>
     */
    open class func testClassname(body: Client) -> Observable<Client> {
        return Observable.create { observer -> Disposable in
            testClassname(body: body) { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     To test class name in snake case
     - PATCH /fake_classname_test
     - examples: [{contentType=application/json, example={
  "client" : "aeiou"
}}]
     
     - parameter body: (body) client model 

     - returns: RequestBuilder<Client> 
     */
    open class func testClassnameWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/fake_classname_test"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}