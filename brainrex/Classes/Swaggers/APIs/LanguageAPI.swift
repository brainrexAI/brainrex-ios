//
// LanguageAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class LanguageAPI {
    /**
     Extracts known crypto entities like coin names, exchanges, media from text.
     
     - parameter text: (body) String of text to be analyze for investor sentiment. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func languageGetCryptoEntities(text: Text, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        languageGetCryptoEntitiesWithRequestBuilder(text: text).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Extracts known crypto entities like coin names, exchanges, media from text.
     - POST /entity/get_crypto_entities
     - The Crypto Entities endpoint ingests written MIT Digital Currency Initiative Paper A paper describing how our sentiment and entity analyzer are built. And how the can be used for trading several cryptocurrencies successfully  We prove that using sentiment only as a input to a trading algorithm can be profitable. If combined with other machine learning models. We descri This Paper could be published in MIT Crypto Economics Journal . . <br><br> Our AI selects from several models, choosing the one that fits the given data best, and we give you the avality to customize the sensitivy of the model. Our model has been trained to recognize anomalies in popular blockchain networks e.g. Bitcoin, Ethereum, learning from past events.
     - API Key:
       - type: apiKey x-api-key 
       - name: APIKeyHeader
     
     - parameter text: (body) String of text to be analyze for investor sentiment. 

     - returns: RequestBuilder<Void> 
     */
    open class func languageGetCryptoEntitiesWithRequestBuilder(text: Text) -> RequestBuilder<Void> {
        let path = "/entity/get_crypto_entities"
        let URLString = brainrexAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: text)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = brainrexAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Returns a -1 to 1 score, depending on positive/negative sentiment
     
     - parameter text: (body) String of text to be analyze for general sentiment. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func languageGetGeneralSentiment(text: Text, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        languageGetGeneralSentimentWithRequestBuilder(text: text).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a -1 to 1 score, depending on positive/negative sentiment
     - POST /sentiment/get_general_sentiment
     - This endpoints returns a score from -1 to +1 where depending on negative or positive attitude in the text.
     - API Key:
       - type: apiKey x-api-key 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example="-0.00023113513340259576"}]
     
     - parameter text: (body) String of text to be analyze for general sentiment. 

     - returns: RequestBuilder<String> 
     */
    open class func languageGetGeneralSentimentWithRequestBuilder(text: Text) -> RequestBuilder<String> {
        let path = "/sentiment/get_general_sentiment"
        let URLString = brainrexAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: text)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = brainrexAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Sentiment analysis score using a model trained for buy signals.
     
     - parameter text: (body) String of text to be analyze for investor sentiment. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func languageGetPriceSentiment(text: Text, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        languageGetPriceSentimentWithRequestBuilder(text: text).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Sentiment analysis score using a model trained for buy signals.
     - POST /language/get_price_sentiment
     - Gives a 0 to 1 score, depending on buy/sell sentiment
     - API Key:
       - type: apiKey x-api-key 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example="-0.00023113513340259576"}]
     
     - parameter text: (body) String of text to be analyze for investor sentiment. 

     - returns: RequestBuilder<String> 
     */
    open class func languageGetPriceSentimentWithRequestBuilder(text: Text) -> RequestBuilder<String> {
        let path = "/language/get_price_sentiment"
        let URLString = brainrexAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: text)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = brainrexAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
