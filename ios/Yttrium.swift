import YttriumWrapper

@objc(Yttrium)
class Yttrium: NSObject {

  @objc(multiply:withB:withResolver:withRejecter:)
  func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    resolve(a*b)
  }

  @objc(getAddress:rejecter:)
  func getAddress(resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) {
        
      let object = YttriumWrapper.Endpoint.init(baseURL: "https://")
      
      // log object in Xcode logs (open pressing Shift+Cmd+C)
      print(object)
      
      let address = "12345"

    if !address.isEmpty { // Example: handle success case
        resolve(address)
    } else { // Example: handle failure case
        let error = NSError(domain: "YourModuleName", code: 500, userInfo: [NSLocalizedDescriptionKey: "Failed to retrieve address"])
        reject("error_code", "Failed to retrieve address", error)
    }
  }
}
