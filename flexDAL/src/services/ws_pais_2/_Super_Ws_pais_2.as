/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - Ws_pais_2.as.
 */
package services.ws_pais_2
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;

[ExcludeClass]
internal class _Super_Ws_pais_2 extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_Ws_pais_2()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "listadoProvincias");
         operation.resultType = String;
        operations["listadoProvincias"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "establecimientoPorRegion");
         operation.resultType = String;
        operations["establecimientoPorRegion"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "listadoComunas");
         operation.resultType = String;
        operations["listadoComunas"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "listadoRegiones");
         operation.resultType = String;
        operations["listadoRegiones"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "establecimientoPorComuna_temp");
         operation.resultType = String;
        operations["establecimientoPorComuna_temp"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */ }



        _serviceControl.service = "wsPais_Service";
        _serviceControl.port = "wsPais_Port";
        wsdl = "http://roma.ceisufro.cl/desarrollofelipe/webservice/application/ws_pais/ws_pais.soap_.php?WSDL";
        model_internal::loadWSDLIfNecessary();


        model_internal::initialize();
    }

    /**
      * This method is a generated wrapper used to call the 'listadoProvincias' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listadoProvincias(idRegion:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listadoProvincias");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(idRegion) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'establecimientoPorRegion' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function establecimientoPorRegion(idRegion:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("establecimientoPorRegion");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(idRegion) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listadoComunas' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listadoComunas(idProvincia:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listadoComunas");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(idProvincia) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listadoRegiones' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listadoRegiones() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listadoRegiones");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'establecimientoPorComuna_temp' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function establecimientoPorComuna_temp(desComuna:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("establecimientoPorComuna_temp");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(desComuna) ;

        return _internal_token;
    }
     
}

}
