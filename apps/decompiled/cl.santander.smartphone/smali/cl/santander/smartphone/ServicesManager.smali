.class public Lcl/santander/smartphone/ServicesManager;
.super Ljava/lang/Object;
.source "ServicesManager.java"


# static fields
.field private static pd_semaphore:Ljava/util/concurrent/Semaphore;

.field public static progress:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static AccionesCompraConfirma(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "cuentaCustodia"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 2000
    const/4 v2, 0x0

    .line 2002
    .local v2, "response":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 2004
    new-instance v1, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;-><init>()V

    .line 2007
    .local v1, "inv_accion":Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->execute()V

    .line 2009
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->getResult()Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 2023
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2025
    if-eqz v2, :cond_0

    .line 2028
    .end local v2    # "response":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    :goto_1
    return-object v2

    .line 2010
    .restart local v2    # "response":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2012
    throw v0

    .line 2013
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 2014
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2015
    throw v0

    .line 2016
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 2018
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2019
    throw v0

    .line 2028
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2020
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static AccionesCompraObtener(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1906
    const/4 v2, 0x0

    .line 1907
    .local v2, "response":Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1909
    new-instance v1, Lcl/santander/santanderCL/operations/AccionesCompraObtiene;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/AccionesCompraObtiene;-><init>()V

    .line 1912
    .local v1, "inv_accion":Lcl/santander/santanderCL/operations/AccionesCompraObtiene;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/AccionesCompraObtiene;->init(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesCompraObtiene;->execute()V

    .line 1914
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesCompraObtiene;->getResult()Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1928
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1929
    if-eqz v2, :cond_0

    .line 1932
    .end local v2    # "response":Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    :goto_1
    return-object v2

    .line 1915
    .restart local v2    # "response":Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    :catch_0
    move-exception v0

    .line 1916
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1917
    throw v0

    .line 1918
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1919
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1920
    throw v0

    .line 1921
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1923
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1924
    throw v0

    .line 1932
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1925
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static AccionesCompraRiesgo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "calificado"    # Ljava/lang/String;
    .param p3, "nombreAccion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1952
    const/4 v2, 0x0

    .line 1954
    .local v2, "response":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1956
    new-instance v1, Lcl/santander/santanderCL/operations/AccionesCompraRiesgo;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/AccionesCompraRiesgo;-><init>()V

    .line 1959
    .local v1, "inv_accion":Lcl/santander/santanderCL/operations/AccionesCompraRiesgo;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcl/santander/santanderCL/operations/AccionesCompraRiesgo;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesCompraRiesgo;->execute()V

    .line 1961
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesCompraRiesgo;->getResult()Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1975
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1977
    if-eqz v2, :cond_0

    .line 1980
    .end local v2    # "response":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :goto_1
    return-object v2

    .line 1962
    .restart local v2    # "response":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :catch_0
    move-exception v0

    .line 1963
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1964
    throw v0

    .line 1965
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1966
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1967
    throw v0

    .line 1968
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1970
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1971
    throw v0

    .line 1980
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1972
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static AccionesCompraValidar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    .locals 19
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "cuentaCustodia"    # Ljava/lang/String;
    .param p2, "nemoTecnico"    # Ljava/lang/String;
    .param p3, "cantidad"    # Ljava/lang/String;
    .param p4, "precio"    # Ljava/lang/String;
    .param p5, "monto"    # Ljava/lang/String;
    .param p6, "comisionMonto"    # Ljava/lang/String;
    .param p7, "precioActual"    # Ljava/lang/String;
    .param p8, "tipoPrecio"    # Ljava/lang/String;
    .param p9, "cuenta"    # Ljava/lang/String;
    .param p10, "diasVigencia"    # Ljava/lang/String;
    .param p11, "rut"    # Ljava/lang/String;
    .param p12, "coordenada1"    # Ljava/lang/String;
    .param p13, "coordenada2"    # Ljava/lang/String;
    .param p14, "coordenada3"    # Ljava/lang/String;
    .param p15, "numeroCelular"    # Ljava/lang/String;
    .param p16, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 2068
    const/16 v18, 0x0

    .line 2070
    .local v18, "response":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    invoke-static/range {p0 .. p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 2072
    new-instance v0, Lcl/santander/santanderCL/operations/AccionesCompraValida;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/AccionesCompraValida;-><init>()V

    .local v0, "inv_accion":Lcl/santander/santanderCL/operations/AccionesCompraValida;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 2075
    :try_start_0
    invoke-virtual/range {v0 .. v16}, Lcl/santander/santanderCL/operations/AccionesCompraValida;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/AccionesCompraValida;->execute()V

    .line 2081
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/AccionesCompraValida;->getResult()Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v18

    .line 2095
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2097
    if-eqz v18, :cond_0

    .line 2100
    .end local v18    # "response":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    :goto_1
    return-object v18

    .line 2082
    .restart local v18    # "response":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    :catch_0
    move-exception v17

    .line 2083
    .local v17, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2084
    throw v17

    .line 2085
    .end local v17    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v17

    .line 2086
    .local v17, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2087
    throw v17

    .line 2088
    .end local v17    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v17

    .line 2090
    .local v17, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2091
    throw v17

    .line 2100
    .end local v17    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/16 v18, 0x0

    goto :goto_1

    .line 2092
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static AccionesVentaConfirmarr(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    .locals 17
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "coordenada1"    # Ljava/lang/String;
    .param p3, "coordenada2"    # Ljava/lang/String;
    .param p4, "coordenada3"    # Ljava/lang/String;
    .param p5, "cuentaCustodia"    # Ljava/lang/String;
    .param p6, "nemotecnico"    # Ljava/lang/String;
    .param p7, "cantidad"    # Ljava/lang/String;
    .param p8, "precio"    # Ljava/lang/String;
    .param p9, "montoRecibir"    # Ljava/lang/String;
    .param p10, "tipoprecio"    # Ljava/lang/String;
    .param p11, "diasVigencia"    # Ljava/lang/String;
    .param p12, "rutcliente"    # Ljava/lang/String;
    .param p13, "numcelular"    # Ljava/lang/String;
    .param p14, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1856
    const/16 v16, 0x0

    .line 1858
    .local v16, "response":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    invoke-static/range {p0 .. p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1860
    new-instance v0, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;-><init>()V

    .local v0, "inv_accion":Lcl/santander/santanderCL/operations/AccionesVentaConfirma;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    .line 1863
    :try_start_0
    invoke-virtual/range {v0 .. v14}, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->execute()V

    .line 1868
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/AccionesVentaConfirma;->getResult()Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v16

    .line 1882
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1884
    if-eqz v16, :cond_0

    .line 1887
    .end local v16    # "response":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    :goto_1
    return-object v16

    .line 1869
    .restart local v16    # "response":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    :catch_0
    move-exception v15

    .line 1870
    .local v15, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1871
    throw v15

    .line 1872
    .end local v15    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v15

    .line 1873
    .local v15, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1874
    throw v15

    .line 1875
    .end local v15    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v15

    .line 1877
    .local v15, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1878
    throw v15

    .line 1887
    .end local v15    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/16 v16, 0x0

    goto :goto_1

    .line 1879
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static AccionesVentaSolicitud(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1743
    const/4 v2, 0x0

    .line 1745
    .local v2, "response":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1747
    new-instance v1, Lcl/santander/santanderCL/operations/AccionesVentaSolicitud;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/AccionesVentaSolicitud;-><init>()V

    .line 1750
    .local v1, "inv_accion":Lcl/santander/santanderCL/operations/AccionesVentaSolicitud;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/AccionesVentaSolicitud;->init(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesVentaSolicitud;->execute()V

    .line 1752
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesVentaSolicitud;->getResult()Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1766
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1768
    if-eqz v2, :cond_0

    .line 1771
    .end local v2    # "response":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :goto_1
    return-object v2

    .line 1753
    .restart local v2    # "response":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1755
    throw v0

    .line 1756
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1757
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1758
    throw v0

    .line 1759
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1761
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1762
    throw v0

    .line 1771
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1763
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static AccionesVentaValidar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "cuenta_custodia"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1790
    const/4 v2, 0x0

    .line 1792
    .local v2, "response":Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1794
    new-instance v1, Lcl/santander/santanderCL/operations/AccionesVentaValida;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/AccionesVentaValida;-><init>()V

    .line 1797
    .local v1, "inv_accion":Lcl/santander/santanderCL/operations/AccionesVentaValida;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcl/santander/santanderCL/operations/AccionesVentaValida;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesVentaValida;->execute()V

    .line 1799
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/AccionesVentaValida;->getResult()Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1813
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1815
    if-eqz v2, :cond_0

    .line 1818
    .end local v2    # "response":Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    :goto_1
    return-object v2

    .line 1800
    .restart local v2    # "response":Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1802
    throw v0

    .line 1803
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1804
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1805
    throw v0

    .line 1806
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1808
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1809
    throw v0

    .line 1818
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1810
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static AceptarDepositoPlazo(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "datos"    # Lcl/santander/santanderCL/data/DatosSimularDeposito;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1642
    const/4 v2, 0x0

    .line 1644
    .local v2, "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1646
    new-instance v1, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoAceptar;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoAceptar;-><init>()V

    .line 1649
    .local v1, "inv_deposito":Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoAceptar;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoAceptar;->init(Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;)V

    .line 1650
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoAceptar;->execute()V

    .line 1651
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoAceptar;->getResult()Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1665
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1667
    if-eqz v2, :cond_0

    .line 1670
    .end local v2    # "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :goto_1
    return-object v2

    .line 1652
    .restart local v2    # "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1654
    throw v0

    .line 1655
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1656
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1657
    throw v0

    .line 1658
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1660
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1661
    throw v0

    .line 1670
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1662
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static ChequesAsociados(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemMovimiento;)Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "cuenta"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "movimiento"    # Lcl/santander/santanderCL/data/response/ItemMovimiento;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v2, 0x0

    .line 469
    .local v2, "response":Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 471
    new-instance v1, Lcl/santander/santanderCL/operations/ChequesAsociados;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/ChequesAsociados;-><init>()V

    .line 473
    .local v1, "mCheques":Lcl/santander/santanderCL/operations/ChequesAsociados;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcl/santander/santanderCL/operations/ChequesAsociados;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemMovimiento;)V

    .line 474
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/ChequesAsociados;->execute()V

    .line 475
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/ChequesAsociados;->getResult()Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 488
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 490
    return-object v2

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 478
    throw v0

    .line 479
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 480
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 481
    throw v0

    .line 482
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 484
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 485
    throw v0

    .line 486
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static ConfirmarDepositoPlazo(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    .locals 10
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "datos"    # Lcl/santander/santanderCL/data/DatosSimularDeposito;
    .param p3, "itemCaptacion"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p4, "coordenada1"    # Ljava/lang/String;
    .param p5, "coordenada2"    # Ljava/lang/String;
    .param p6, "coordenada3"    # Ljava/lang/String;
    .param p7, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1696
    const/4 v9, 0x0

    .line 1698
    .local v9, "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1700
    new-instance v0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;-><init>()V

    .local v0, "inv_deposito":Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 1703
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->init(Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->execute()V

    .line 1706
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoConfirmar;->getResult()Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    .line 1720
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1722
    if-eqz v9, :cond_0

    .line 1725
    .end local v9    # "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    :goto_1
    return-object v9

    .line 1707
    .restart local v9    # "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    :catch_0
    move-exception v8

    .line 1708
    .local v8, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1709
    throw v8

    .line 1710
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v8

    .line 1711
    .local v8, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1712
    throw v8

    .line 1713
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v8

    .line 1715
    .local v8, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1716
    throw v8

    .line 1725
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 1717
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static ConsultaCheques(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemChequeAsociado;)Lcl/santander/santanderCL/response/ConsultaChequesResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "cuenta"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "chequeAsociado"    # Lcl/santander/santanderCL/data/response/ItemChequeAsociado;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 404
    .local v2, "response":Lcl/santander/santanderCL/response/ConsultaChequesResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 406
    new-instance v1, Lcl/santander/santanderCL/operations/ConsultaCheques;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/ConsultaCheques;-><init>()V

    .line 409
    .local v1, "mCheques":Lcl/santander/santanderCL/operations/ConsultaCheques;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcl/santander/santanderCL/operations/ConsultaCheques;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemChequeAsociado;)V

    .line 410
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/ConsultaCheques;->execute()V

    .line 411
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/ConsultaCheques;->getResult()Lcl/santander/santanderCL/response/ConsultaChequesResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 424
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 426
    return-object v2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 414
    throw v0

    .line 415
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 416
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 417
    throw v0

    .line 418
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 420
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 421
    throw v0

    .line 422
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static ConsultaEstadoCuenta(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "cuenta"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, "response":Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 437
    new-instance v1, Lcl/santander/santanderCL/operations/EstadoDeCuenta;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/EstadoDeCuenta;-><init>()V

    .line 440
    .local v1, "mEstadoCuenta":Lcl/santander/santanderCL/operations/EstadoDeCuenta;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->execute()V

    .line 442
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->getResult()Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 456
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 458
    return-object v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 445
    throw v0

    .line 446
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 448
    throw v0

    .line 450
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 451
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 452
    throw v0

    .line 454
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static DAP_AceptarCobro(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "numeroOperacion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 2166
    const/4 v2, 0x0

    .line 2168
    .local v2, "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 2170
    new-instance v1, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoAceptar;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoAceptar;-><init>()V

    .line 2173
    .local v1, "inv_deposito":Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoAceptar;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoAceptar;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoAceptar;->execute()V

    .line 2175
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoAceptar;->getResult()Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 2189
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2191
    if-eqz v2, :cond_0

    .line 2194
    .end local v2    # "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    :goto_1
    return-object v2

    .line 2176
    .restart local v2    # "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2178
    throw v0

    .line 2179
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 2180
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2181
    throw v0

    .line 2182
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 2184
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2185
    throw v0

    .line 2194
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2186
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static DAP_ConfirmarCobro(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    .locals 10
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "numeroOperacion"    # Ljava/lang/String;
    .param p3, "coordenada1"    # Ljava/lang/String;
    .param p4, "coordenada2"    # Ljava/lang/String;
    .param p5, "coordenada3"    # Ljava/lang/String;
    .param p6, "cuentaAbono"    # Ljava/lang/String;
    .param p7, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 2220
    const/4 v9, 0x0

    .line 2222
    .local v9, "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 2224
    new-instance v0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;-><init>()V

    .local v0, "inv_deposito":Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 2227
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->execute()V

    .line 2230
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->getResult()Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    .line 2244
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2246
    if-eqz v9, :cond_0

    .line 2249
    .end local v9    # "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    :goto_1
    return-object v9

    .line 2231
    .restart local v9    # "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    :catch_0
    move-exception v8

    .line 2232
    .local v8, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2233
    throw v8

    .line 2234
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v8

    .line 2235
    .local v8, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2236
    throw v8

    .line 2237
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v8

    .line 2239
    .local v8, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2240
    throw v8

    .line 2249
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 2241
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static DAP_InicioCobro(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 2119
    const/4 v2, 0x0

    .line 2121
    .local v2, "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 2123
    new-instance v1, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;-><init>()V

    .line 2126
    .local v1, "inv_deposito":Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->init(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->execute()V

    .line 2128
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->getResult()Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 2142
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2144
    if-eqz v2, :cond_0

    .line 2147
    .end local v2    # "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :goto_1
    return-object v2

    .line 2129
    .restart local v2    # "response":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :catch_0
    move-exception v0

    .line 2130
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2131
    throw v0

    .line 2132
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 2133
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2134
    throw v0

    .line 2135
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 2137
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 2138
    throw v0

    .line 2147
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2139
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static DatosCreditoConsumo(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v2, 0x0

    .line 531
    .local v2, "response":Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 533
    new-instance v1, Lcl/santander/santanderCL/operations/CreditosConsumoDatos;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/CreditosConsumoDatos;-><init>()V

    .line 536
    .local v1, "mCredito":Lcl/santander/santanderCL/operations/CreditosConsumoDatos;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/CreditosConsumoDatos;->init(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/CreditosConsumoDatos;->execute()V

    .line 538
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/CreditosConsumoDatos;->getResult()Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 551
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 552
    return-object v2

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 541
    throw v0

    .line 542
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 543
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 544
    throw v0

    .line 545
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 547
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 548
    throw v0

    .line 549
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static IndicadoresFinancieros(Landroid/app/Activity;)Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v2, 0x0

    .line 374
    .local v2, "response":Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 376
    new-instance v1, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;-><init>()V

    .line 379
    .local v1, "mIndicadores":Lcl/santander/santanderCL/operations/IndicadoresEconomicos;
    :try_start_0
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->init()V

    .line 380
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->execute()V

    .line 381
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->getResult()Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 394
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 395
    return-object v2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 384
    throw v0

    .line 385
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 386
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 387
    throw v0

    .line 388
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 390
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 391
    throw v0

    .line 392
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static ListadoPois(Landroid/app/Activity;DDIILjava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;Z)Ljava/util/ArrayList;
    .locals 12
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_lat"    # D
    .param p3, "_lon"    # D
    .param p5, "_radio"    # I
    .param p6, "cuantos"    # I
    .param p8, "_tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    .param p9, "showDialog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "DDII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 656
    .local p7, "_idCategorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 658
    .local v11, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemPOI;>;"
    if-eqz p9, :cond_0

    .line 659
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 661
    :cond_0
    new-instance v0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/maps/BuscarPOI;-><init>()V

    .line 664
    .local v0, "buscadorPois":Lcl/santander/santanderCL/operations/maps/BuscarPOI;
    :try_start_0
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 665
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v9, p6

    .line 667
    invoke-virtual/range {v0 .. v9}, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->init(DDILjava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;Landroid/util/DisplayMetrics;I)V

    .line 669
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->execute()V

    .line 670
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->getResult()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 686
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    if-eqz p9, :cond_1

    .line 687
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 688
    :cond_1
    return-object v11

    .line 671
    :catch_0
    move-exception v10

    .line 672
    .local v10, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz p9, :cond_2

    .line 673
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 674
    :cond_2
    throw v10

    .line 675
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v10

    .line 676
    .local v10, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    if-eqz p9, :cond_3

    .line 677
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 678
    :cond_3
    throw v10

    .line 679
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v10

    .line 680
    .local v10, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    if-eqz p9, :cond_4

    .line 681
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 682
    :cond_4
    throw v10

    .line 683
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static LogOff(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1546
    const/4 v2, 0x0

    .line 1548
    .local v2, "logoutOK":Z
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1550
    new-instance v1, Lcl/santander/santanderCL/operations/LogOut;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/LogOut;-><init>()V

    .line 1553
    .local v1, "logout":Lcl/santander/santanderCL/operations/LogOut;
    :try_start_0
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/LogOut;->init()V

    .line 1554
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/LogOut;->execute()V

    .line 1555
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/LogOut;->getResult()Z
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 1569
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    move v3, v2

    .line 1571
    :goto_1
    return v3

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1558
    throw v0

    .line 1559
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1560
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1561
    throw v0

    .line 1562
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1564
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1565
    const/4 v3, 0x1

    goto :goto_1

    .line 1566
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static Login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/LoginResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .param p2, "_pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 175
    .local v2, "response":Lcl/santander/santanderCL/response/LoginResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 177
    new-instance v1, Lcl/santander/santanderCL/operations/Login;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Login;-><init>()V

    .line 180
    .local v1, "login":Lcl/santander/santanderCL/operations/Login;
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcl/santander/santanderCL/operations/Login;->init(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Login;->execute()V

    .line 182
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Login;->getResult()Lcl/santander/santanderCL/response/LoginResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 195
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 197
    return-object v2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 185
    throw v0

    .line 186
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 188
    throw v0

    .line 189
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 190
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 191
    throw v0

    .line 192
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static MovimientosCuenta(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/ArrayList;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "desde"    # Ljava/util/Date;
    .param p3, "hasta"    # Ljava/util/Date;
    .param p4, "showPD"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcl/santander/santanderCL/data/response/ItemProducto;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemMovimiento;>;"
    if-eqz p4, :cond_0

    .line 239
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 241
    :cond_0
    new-instance v1, Lcl/santander/santanderCL/operations/MovimientosCuentas;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/MovimientosCuentas;-><init>()V

    .line 244
    .local v1, "mCuentas":Lcl/santander/santanderCL/operations/MovimientosCuentas;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcl/santander/santanderCL/operations/MovimientosCuentas;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;)V

    .line 245
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovimientosCuentas;->execute()V

    .line 246
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovimientosCuentas;->getResult()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 262
    :goto_0
    if-eqz p4, :cond_1

    .line 263
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 264
    :cond_1
    return-object v2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz p4, :cond_2

    .line 249
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 250
    :cond_2
    throw v0

    .line 251
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    if-eqz p4, :cond_3

    .line 253
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 254
    :cond_3
    throw v0

    .line 255
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 256
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    if-eqz p4, :cond_4

    .line 257
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 258
    :cond_4
    throw v0

    .line 259
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static MovimientosLinea(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Z)Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "showPD"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 309
    .local v2, "response":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    if-eqz p2, :cond_0

    .line 310
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 312
    :cond_0
    new-instance v1, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;-><init>()V

    .line 315
    .local v1, "mLineas":Lcl/santander/santanderCL/operations/MovimientosLineaCredito;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Z)V

    .line 316
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->execute()V

    .line 317
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->getResult()Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 333
    :goto_0
    if-eqz p2, :cond_1

    .line 334
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 336
    :cond_1
    return-object v2

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz p2, :cond_2

    .line 320
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 321
    :cond_2
    throw v0

    .line 322
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    if-eqz p2, :cond_3

    .line 324
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 325
    :cond_3
    throw v0

    .line 326
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 327
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    if-eqz p2, :cond_4

    .line 328
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 329
    :cond_4
    throw v0

    .line 330
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static MovimientosTarjetas(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;ZZ)Ljava/util/ArrayList;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "fechaDesde"    # Ljava/util/Date;
    .param p3, "fechaHasta"    # Ljava/util/Date;
    .param p4, "nacional"    # Z
    .param p5, "showPD"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcl/santander/santanderCL/data/response/ItemProducto;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 273
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemMovimiento;>;"
    if-eqz p5, :cond_0

    .line 274
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 276
    :cond_0
    new-instance v1, Lcl/santander/santanderCL/operations/MovSinFacturar;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/MovSinFacturar;-><init>()V

    .line 279
    .local v1, "mLineas":Lcl/santander/santanderCL/operations/MovSinFacturar;
    :try_start_0
    invoke-virtual {v1, p1, p4}, Lcl/santander/santanderCL/operations/MovSinFacturar;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Z)V

    .line 281
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovSinFacturar;->execute()V

    .line 282
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovSinFacturar;->getResult()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 298
    :goto_0
    if-eqz p5, :cond_1

    .line 299
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 301
    :cond_1
    return-object v2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz p5, :cond_2

    .line 285
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 286
    :cond_2
    throw v0

    .line 287
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    if-eqz p5, :cond_3

    .line 289
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 290
    :cond_3
    throw v0

    .line 291
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 292
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    if-eqz p5, :cond_4

    .line 293
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 294
    :cond_4
    throw v0

    .line 295
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static PagoSuscripcion(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    .locals 11
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .param p2, "_itemSusc"    # Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    .param p3, "_itemDetalle"    # Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .param p4, "_producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p5, "_c1"    # Ljava/lang/String;
    .param p6, "_c2"    # Ljava/lang/String;
    .param p7, "_c3"    # Ljava/lang/String;
    .param p8, "_nombreC"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 622
    const/4 v10, 0x0

    .line 624
    .local v10, "response":Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 626
    new-instance v0, Lcl/santander/santanderCL/operations/PagoSuscripcion;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/PagoSuscripcion;-><init>()V

    .local v0, "pago":Lcl/santander/santanderCL/operations/PagoSuscripcion;
    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 629
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Lcl/santander/santanderCL/operations/PagoSuscripcion;->init(Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/PagoSuscripcion;->execute()V

    .line 632
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/PagoSuscripcion;->getResult()Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 646
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 647
    return-object v10

    .line 633
    :catch_0
    move-exception v9

    .line 634
    .local v9, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 635
    throw v9

    .line 636
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v9

    .line 637
    .local v9, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 638
    throw v9

    .line 639
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v9

    .line 641
    .local v9, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 642
    throw v9

    .line 643
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static PosicionGlobal(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, "response":Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 209
    new-instance v1, Lcl/santander/santanderCL/operations/CruceProductoOnline;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/CruceProductoOnline;-><init>()V

    .line 212
    .local v1, "pGlobal":Lcl/santander/santanderCL/operations/CruceProductoOnline;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/CruceProductoOnline;->init(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/CruceProductoOnline;->execute()V

    .line 214
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/CruceProductoOnline;->getResult()Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 228
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 229
    return-object v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 217
    throw v0

    .line 218
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 220
    throw v0

    .line 221
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 223
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 224
    throw v0

    .line 225
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static RecargaGetListaOperadores(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemOperadora;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 695
    const/4 v2, 0x0

    .line 697
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemOperadora;>;"
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 699
    new-instance v1, Lcl/santander/santanderCL/operations/Operadoras;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Operadoras;-><init>()V

    .line 703
    .local v1, "operadoras":Lcl/santander/santanderCL/operations/Operadoras;
    :try_start_0
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Operadoras;->init()V

    .line 704
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Operadoras;->execute()V

    .line 705
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Operadoras;->getResult()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 719
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 721
    return-object v2

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 708
    throw v0

    .line 709
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 710
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 711
    throw v0

    .line 712
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 714
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 715
    throw v0

    .line 716
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static RecargaPagar(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemOperadora;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/PagoRecargaResponse;
    .locals 12
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .param p2, "_itemOP"    # Lcl/santander/santanderCL/data/response/ItemOperadora;
    .param p3, "_itemProd"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p4, "_phone"    # Ljava/lang/String;
    .param p5, "_mail"    # Ljava/lang/String;
    .param p6, "_monto"    # I
    .param p7, "_c1"    # Ljava/lang/String;
    .param p8, "_c2"    # Ljava/lang/String;
    .param p9, "_c3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 761
    const/4 v11, 0x0

    .line 763
    .local v11, "response":Lcl/santander/santanderCL/response/PagoRecargaResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 765
    new-instance v0, Lcl/santander/santanderCL/operations/PagoRecarga;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/PagoRecarga;-><init>()V

    .local v0, "desafio":Lcl/santander/santanderCL/operations/PagoRecarga;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 768
    :try_start_0
    invoke-virtual/range {v0 .. v9}, Lcl/santander/santanderCL/operations/PagoRecarga;->init(Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemOperadora;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/PagoRecarga;->execute()V

    .line 771
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/PagoRecarga;->getResult()Lcl/santander/santanderCL/response/PagoRecargaResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 785
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 786
    return-object v11

    .line 772
    :catch_0
    move-exception v10

    .line 773
    .local v10, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 774
    throw v10

    .line 775
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v10

    .line 776
    .local v10, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 777
    throw v10

    .line 778
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v10

    .line 780
    .local v10, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 781
    throw v10

    .line 782
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static RecargaPedirDesafio(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 729
    const/4 v2, 0x0

    .line 731
    .local v2, "response":Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 733
    new-instance v0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;-><init>()V

    .line 736
    .local v0, "desafio":Lcl/santander/santanderCL/operations/RecargaPedirDesafio;
    :try_start_0
    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->init(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->execute()V

    .line 738
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->getResult()Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 752
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 753
    return-object v2

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 741
    throw v1

    .line 742
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v1

    .line 743
    .local v1, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 744
    throw v1

    .line 745
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v1

    .line 747
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 748
    throw v1

    .line 749
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static ResumenLinea(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;)Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v2, 0x0

    .line 344
    .local v2, "response":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 346
    new-instance v1, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;-><init>()V

    .line 349
    .local v1, "mLineas":Lcl/santander/santanderCL/operations/MovimientosLineaCredito;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Z)V

    .line 350
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->execute()V

    .line 351
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->getResult()Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 365
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 366
    return-object v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 354
    throw v0

    .line 355
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 356
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 357
    throw v0

    .line 358
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 360
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 361
    throw v0

    .line 362
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static SimularDepositoPlazo(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;II)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    .locals 8
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .param p2, "_tipoDeposito"    # Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;
    .param p3, "_tipoAjuste"    # Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;
    .param p4, "_monto"    # I
    .param p5, "_plazo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1595
    const/4 v7, 0x0

    .line 1597
    .local v7, "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1599
    new-instance v0, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;-><init>()V

    .line 1602
    .local v0, "inv_deposito":Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->init(Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1603
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->execute()V

    .line 1604
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Inversion_DepositoAPlazoSimular;->getResult()Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 1618
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1620
    if-eqz v7, :cond_0

    .line 1623
    .end local v7    # "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    :goto_1
    return-object v7

    .line 1605
    .restart local v7    # "response":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    :catch_0
    move-exception v6

    .line 1606
    .local v6, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1607
    throw v6

    .line 1608
    .end local v6    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v6

    .line 1609
    .local v6, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1610
    throw v6

    .line 1611
    .end local v6    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v6

    .line 1613
    .local v6, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1614
    throw v6

    .line 1623
    .end local v6    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 1615
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static SolicitarCreditoConsumo(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;
    .locals 10
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_escalares"    # Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;
    .param p2, "_nomCliente"    # Ljava/lang/String;
    .param p3, "_rut"    # Ljava/lang/String;
    .param p4, "_email"    # Ljava/lang/String;
    .param p5, "_numCelular"    # Ljava/lang/String;
    .param p6, "_montoSolicitado"    # Ljava/lang/String;
    .param p7, "_plazo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 499
    const/4 v9, 0x0

    .line 501
    .local v9, "response":Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 503
    new-instance v0, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;-><init>()V

    .local v0, "mCredito":Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 506
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->init(Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->execute()V

    .line 509
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/CreditosConsumoSolicitud;->getResult()Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    .line 522
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 523
    return-object v9

    .line 510
    :catch_0
    move-exception v8

    .line 511
    .local v8, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 512
    throw v8

    .line 513
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v8

    .line 514
    .local v8, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 515
    throw v8

    .line 516
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v8

    .line 518
    .local v8, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 519
    throw v8

    .line 520
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcl/santander/smartphone/ServicesManager;->pd_semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public static cancelProgress()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcl/santander/smartphone/ServicesManager;->progress:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcl/santander/smartphone/ServicesManager;->progress:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 166
    :cond_0
    return-void
.end method

.method public static detalleSuscripcion(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemSuscripcion;)Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .param p2, "_item"    # Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v2, 0x0

    .line 591
    .local v2, "response":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 593
    new-instance v0, Lcl/santander/santanderCL/operations/DetalleSuscripcion;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/DetalleSuscripcion;-><init>()V

    .line 596
    .local v0, "detalleSuscripcion":Lcl/santander/santanderCL/operations/DetalleSuscripcion;
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->init(Lcl/santander/santanderCL/data/response/ItemSuscripcion;Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->execute()V

    .line 598
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/DetalleSuscripcion;->getResult()Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 612
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 613
    return-object v2

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 601
    throw v1

    .line 602
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v1

    .line 603
    .local v1, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 604
    throw v1

    .line 605
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v1

    .line 607
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 608
    throw v1

    .line 609
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static getAPVs(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1461
    const/4 v2, 0x0

    .line 1463
    .local v2, "response":Lcl/santander/santanderCL/response/ConsultaAPVResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1465
    new-instance v1, Lcl/santander/santanderCL/operations/ConsultaAPV;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/ConsultaAPV;-><init>()V

    .line 1468
    .local v1, "inversiones":Lcl/santander/santanderCL/operations/ConsultaAPV;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/ConsultaAPV;->init(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/ConsultaAPV;->execute()V

    .line 1470
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/ConsultaAPV;->getResult()Lcl/santander/santanderCL/response/ConsultaAPVResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1484
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1486
    if-eqz v2, :cond_0

    .line 1487
    invoke-virtual {v2}, Lcl/santander/santanderCL/response/ConsultaAPVResponse;->getAPVs()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v3

    .line 1489
    :goto_1
    return-object v3

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1473
    throw v0

    .line 1474
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1475
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1476
    throw v0

    .line 1477
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1479
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1480
    throw v0

    .line 1489
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1481
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static getAcciones(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1505
    const/4 v2, 0x0

    .line 1507
    .local v2, "response":Lcl/santander/santanderCL/response/AccionesResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1509
    new-instance v1, Lcl/santander/santanderCL/operations/Acciones;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Acciones;-><init>()V

    .line 1512
    .local v1, "inversiones":Lcl/santander/santanderCL/operations/Acciones;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/Acciones;->init(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Acciones;->execute()V

    .line 1514
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Acciones;->getResult()Lcl/santander/santanderCL/response/AccionesResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1528
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1530
    if-eqz v2, :cond_0

    .line 1531
    invoke-virtual {v2}, Lcl/santander/santanderCL/response/AccionesResponse;->getAcciones()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v3

    .line 1533
    :goto_1
    return-object v3

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1517
    throw v0

    .line 1518
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1519
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1520
    throw v0

    .line 1521
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1523
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1524
    throw v0

    .line 1533
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1525
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static getCategorias(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "_act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemCategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 792
    const/4 v3, 0x0

    .line 794
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemCategoria;>;"
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 796
    new-instance v0, Lcl/santander/santanderCL/operations/maps/Categorias;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/maps/Categorias;-><init>()V

    .line 799
    .local v0, "categorias":Lcl/santander/santanderCL/operations/maps/Categorias;
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 800
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 802
    invoke-virtual {v0, v2}, Lcl/santander/santanderCL/operations/maps/Categorias;->init(Landroid/util/DisplayMetrics;)V

    .line 803
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/maps/Categorias;->execute()V

    .line 804
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/maps/Categorias;->getResult()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 818
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 820
    return-object v3

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 807
    throw v1

    .line 808
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v1

    .line 809
    .local v1, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 810
    throw v1

    .line 811
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v1

    .line 813
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 814
    throw v1

    .line 815
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static getDepositosPlazo(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1417
    const/4 v2, 0x0

    .line 1419
    .local v2, "response":Lcl/santander/santanderCL/response/DepositoPlazoResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1421
    new-instance v1, Lcl/santander/santanderCL/operations/DepositoPlazo;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/DepositoPlazo;-><init>()V

    .line 1424
    .local v1, "inversiones":Lcl/santander/santanderCL/operations/DepositoPlazo;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/DepositoPlazo;->init(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/DepositoPlazo;->execute()V

    .line 1426
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/DepositoPlazo;->getResult()Lcl/santander/santanderCL/response/DepositoPlazoResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1440
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1442
    if-eqz v2, :cond_0

    .line 1443
    invoke-virtual {v2}, Lcl/santander/santanderCL/response/DepositoPlazoResponse;->getDepositos()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v3

    .line 1445
    :goto_1
    return-object v3

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1429
    throw v0

    .line 1430
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1431
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1432
    throw v0

    .line 1433
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1435
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1436
    throw v0

    .line 1445
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1437
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static getDetallePOI(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/response/ItemOferta;
    .locals 5
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "idComercio"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 826
    const/4 v3, 0x0

    .line 828
    .local v3, "response":Lcl/santander/santanderCL/data/response/ItemOferta;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 830
    new-instance v0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/maps/DetalleOferta;-><init>()V

    .line 833
    .local v0, "detalles":Lcl/santander/santanderCL/operations/maps/DetalleOferta;
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 834
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 836
    invoke-virtual {v0, p1, v2}, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->init(Ljava/lang/String;Landroid/util/DisplayMetrics;)V

    .line 837
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->execute()V

    .line 838
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->getResult()Lcl/santander/santanderCL/data/response/ItemOferta;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 852
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 854
    return-object v3

    .line 839
    :catch_0
    move-exception v1

    .line 840
    .local v1, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 841
    throw v1

    .line 842
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v1

    .line 843
    .local v1, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 844
    throw v1

    .line 845
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v1

    .line 847
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 848
    throw v1

    .line 849
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static getFondosMutuos(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1373
    const/4 v2, 0x0

    .line 1375
    .local v2, "response":Lcl/santander/santanderCL/response/FondosMutuosResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1377
    new-instance v1, Lcl/santander/santanderCL/operations/FondosMutuos;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/FondosMutuos;-><init>()V

    .line 1380
    .local v1, "inversiones":Lcl/santander/santanderCL/operations/FondosMutuos;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/FondosMutuos;->init(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/FondosMutuos;->execute()V

    .line 1382
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/FondosMutuos;->getResult()Lcl/santander/santanderCL/response/FondosMutuosResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1396
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1398
    if-eqz v2, :cond_0

    .line 1399
    invoke-virtual {v2}, Lcl/santander/santanderCL/response/FondosMutuosResponse;->getFondosMutuos()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v3

    .line 1401
    :goto_1
    return-object v3

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1385
    throw v0

    .line 1386
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1387
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1388
    throw v0

    .line 1389
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1391
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1392
    throw v0

    .line 1401
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1393
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static getListaSuscripciones(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "_rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemSuscripcion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 561
    .local v1, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemSuscripcion;>;"
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 563
    new-instance v2, Lcl/santander/santanderCL/operations/ListaSuscripciones;

    invoke-direct {v2}, Lcl/santander/santanderCL/operations/ListaSuscripciones;-><init>()V

    .line 566
    .local v2, "listaSuscripciones":Lcl/santander/santanderCL/operations/ListaSuscripciones;
    :try_start_0
    invoke-virtual {v2, p1}, Lcl/santander/santanderCL/operations/ListaSuscripciones;->init(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/ListaSuscripciones;->execute()V

    .line 568
    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/ListaSuscripciones;->getResult()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 581
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 582
    return-object v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 571
    throw v0

    .line 572
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 573
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 574
    throw v0

    .line 575
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 577
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 578
    throw v0

    .line 579
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static showProgress(Landroid/app/Activity;)V
    .locals 2
    .param p0, "_act"    # Landroid/app/Activity;

    .prologue
    .line 123
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcl/santander/smartphone/ServicesManager;->pd_semaphore:Ljava/util/concurrent/Semaphore;

    .line 125
    new-instance v0, Lcl/santander/smartphone/ServicesManager$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/ServicesManager$1;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcl/santander/smartphone/ServicesManager;->progress:Ljava/lang/Thread;

    .line 157
    sget-object v0, Lcl/santander/smartphone/ServicesManager;->progress:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method

.method public static supergiroIngreso(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "rutOrigen"    # Ljava/lang/String;
    .param p3, "rutDestino"    # Ljava/lang/String;
    .param p4, "monto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 879
    const/4 v2, 0x0

    .line 881
    .local v2, "response":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 883
    new-instance v1, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;-><init>()V

    .line 887
    .local v1, "ingreso":Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3, p4}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;I)V

    .line 889
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->execute()V

    .line 891
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Ingreso;->getResult()Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 906
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 907
    return-object v2

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 895
    throw v0

    .line 896
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 897
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 898
    throw v0

    .line 899
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 901
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 902
    throw v0

    .line 903
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static supergiroRealizar(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/DatosSupergiros;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    .locals 10
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "datos"    # Lcl/santander/santanderCL/data/DatosSupergiros;
    .param p3, "idtrx"    # Ljava/lang/String;
    .param p4, "codigoSMS"    # Ljava/lang/String;
    .param p5, "RutDestino"    # Ljava/lang/String;
    .param p6, "RutOrigen"    # Ljava/lang/String;
    .param p7, "monto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 996
    const/4 v9, 0x0

    .line 998
    .local v9, "response":Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1000
    new-instance v0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;-><init>()V

    .local v0, "realizar":Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 1003
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/DatosSupergiros;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1005
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->execute()V

    .line 1006
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Realizar;->getResult()Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    .line 1020
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1021
    return-object v9

    .line 1007
    :catch_0
    move-exception v8

    .line 1008
    .local v8, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1009
    throw v8

    .line 1010
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v8

    .line 1011
    .local v8, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1012
    throw v8

    .line 1013
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v8

    .line 1015
    .local v8, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1016
    throw v8

    .line 1017
    .end local v8    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static supergiroVerificar(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    .locals 11
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "nombreUsuario"    # Ljava/lang/String;
    .param p3, "rutOrigen"    # Ljava/lang/String;
    .param p4, "rutDestino"    # Ljava/lang/String;
    .param p5, "monto"    # I
    .param p6, "coordenada1"    # Ljava/lang/String;
    .param p7, "coordenada2"    # Ljava/lang/String;
    .param p8, "coordenada3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 941
    const/4 v10, 0x0

    .line 943
    .local v10, "response":Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 945
    new-instance v0, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;-><init>()V

    .local v0, "verificacion":Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 948
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->execute()V

    .line 951
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Supergiro_Verificar;->getResult()Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 965
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 966
    return-object v10

    .line 952
    :catch_0
    move-exception v9

    .line 953
    .local v9, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 954
    throw v9

    .line 955
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v9

    .line 956
    .local v9, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 957
    throw v9

    .line 958
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v9

    .line 960
    .local v9, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 961
    throw v9

    .line 962
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static tranf_entremisproductos(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemProducto;ILjava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    .locals 8
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "origen"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "destino"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p3, "monto"    # I
    .param p4, "rutCliente"    # Ljava/lang/String;
    .param p5, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v7, 0x0

    .line 1030
    .local v7, "response":Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1032
    new-instance v0, Lcl/santander/santanderCL/operations/Transf_MisProductos;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Transf_MisProductos;-><init>()V

    .local v0, "entremisproductos":Lcl/santander/santanderCL/operations/Transf_MisProductos;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1035
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcl/santander/santanderCL/operations/Transf_MisProductos;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemProducto;ILjava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_MisProductos;->execute()V

    .line 1037
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_MisProductos;->getResult()Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 1051
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1052
    return-object v7

    .line 1038
    :catch_0
    move-exception v6

    .line 1039
    .local v6, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1040
    throw v6

    .line 1041
    .end local v6    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v6

    .line 1042
    .local v6, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1043
    throw v6

    .line 1044
    .end local v6    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v6

    .line 1046
    .local v6, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1047
    throw v6

    .line 1048
    .end local v6    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static transf_terceros_bancostipocuenta(Landroid/app/Activity;)Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1152
    const/4 v2, 0x0

    .line 1154
    .local v2, "response":Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1156
    new-instance v0, Lcl/santander/santanderCL/operations/Transf_Terceros_BancosTipoCuenta;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_BancosTipoCuenta;-><init>()V

    .line 1159
    .local v0, "bancostipocuenta":Lcl/santander/santanderCL/operations/Transf_Terceros_BancosTipoCuenta;
    :try_start_0
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_BancosTipoCuenta;->init()V

    .line 1160
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_BancosTipoCuenta;->execute()V

    .line 1161
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_BancosTipoCuenta;->getResult()Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1175
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1176
    return-object v2

    .line 1162
    :catch_0
    move-exception v1

    .line 1163
    .local v1, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1164
    throw v1

    .line 1165
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v1

    .line 1166
    .local v1, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1167
    throw v1

    .line 1168
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v1

    .line 1170
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1171
    throw v1

    .line 1172
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static transf_terceros_inicio(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1112
    const/4 v2, 0x0

    .line 1114
    .local v2, "response":Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1116
    new-instance v1, Lcl/santander/santanderCL/operations/Transf_Terceros_Inicio;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/Transf_Terceros_Inicio;-><init>()V

    .line 1119
    .local v1, "inicio":Lcl/santander/santanderCL/operations/Transf_Terceros_Inicio;
    :try_start_0
    invoke-virtual {v1, p1}, Lcl/santander/santanderCL/operations/Transf_Terceros_Inicio;->init(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Transf_Terceros_Inicio;->execute()V

    .line 1121
    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Transf_Terceros_Inicio;->getResult()Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1135
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1136
    return-object v2

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1124
    throw v0

    .line 1125
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1126
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1127
    throw v0

    .line 1128
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1130
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1131
    throw v0

    .line 1132
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static transf_terceros_ultimas_transf(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
    .locals 4
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1070
    const/4 v1, 0x0

    .line 1072
    .local v1, "response":Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1074
    new-instance v2, Lcl/santander/santanderCL/operations/Transf_Terceros_Ultimas_Transf;

    invoke-direct {v2}, Lcl/santander/santanderCL/operations/Transf_Terceros_Ultimas_Transf;-><init>()V

    .line 1077
    .local v2, "ultimastransferencias":Lcl/santander/santanderCL/operations/Transf_Terceros_Ultimas_Transf;
    :try_start_0
    invoke-virtual {v2, p1}, Lcl/santander/santanderCL/operations/Transf_Terceros_Ultimas_Transf;->init(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/Transf_Terceros_Ultimas_Transf;->execute()V

    .line 1079
    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/Transf_Terceros_Ultimas_Transf;->getResult()Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 1093
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1094
    return-object v1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1082
    throw v0

    .line 1083
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v0

    .line 1084
    .local v0, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1085
    throw v0

    .line 1086
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v0

    .line 1088
    .local v0, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1089
    throw v0

    .line 1090
    .end local v0    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static transf_terceros_validaOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    .locals 17
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "cuentaCliente"    # Ljava/lang/String;
    .param p3, "codProductoCliente"    # Ljava/lang/String;
    .param p4, "emailCliente"    # Ljava/lang/String;
    .param p5, "rutDestinatario"    # Ljava/lang/String;
    .param p6, "cuentaDestino"    # Ljava/lang/String;
    .param p7, "codProductoDestinatario"    # Ljava/lang/String;
    .param p8, "codBancoDestinatario"    # Ljava/lang/String;
    .param p9, "nombreDestinatario"    # Ljava/lang/String;
    .param p10, "emailDestinatario"    # Ljava/lang/String;
    .param p11, "comentarioMail"    # Ljava/lang/String;
    .param p12, "otp_Idtrx"    # Ljava/lang/String;
    .param p13, "codOtp"    # Ljava/lang/String;
    .param p14, "montoTransferir"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1287
    const/16 v16, 0x0

    .line 1289
    .local v16, "response":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    invoke-static/range {p0 .. p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1291
    new-instance v0, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;-><init>()V

    .local v0, "validaotp":Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    .line 1294
    :try_start_0
    invoke-virtual/range {v0 .. v14}, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1299
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->execute()V

    .line 1300
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Realizar;->getResult()Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v16

    .line 1314
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1315
    return-object v16

    .line 1301
    :catch_0
    move-exception v15

    .line 1302
    .local v15, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1303
    throw v15

    .line 1304
    .end local v15    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v15

    .line 1305
    .local v15, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1306
    throw v15

    .line 1307
    .end local v15    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v15

    .line 1309
    .local v15, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1310
    throw v15

    .line 1311
    .end local v15    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static transf_terceros_validasuperclave(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/LimitesTransferencias;I)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    .locals 19
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "cuentaCliente"    # Ljava/lang/String;
    .param p3, "codProductoCliente"    # Ljava/lang/String;
    .param p4, "emailCliente"    # Ljava/lang/String;
    .param p5, "rutDestinatario"    # Ljava/lang/String;
    .param p6, "cuentaDestino"    # Ljava/lang/String;
    .param p7, "codProductoDestinatario"    # Ljava/lang/String;
    .param p8, "codBancoDestinatario"    # Ljava/lang/String;
    .param p9, "nombreDestinatario"    # Ljava/lang/String;
    .param p10, "emailDestinatario"    # Ljava/lang/String;
    .param p11, "comentarioMail"    # Ljava/lang/String;
    .param p12, "coordenada1"    # Ljava/lang/String;
    .param p13, "coordenada2"    # Ljava/lang/String;
    .param p14, "coordenada3"    # Ljava/lang/String;
    .param p15, "limites"    # Lcl/santander/santanderCL/data/LimitesTransferencias;
    .param p16, "montoTransferir"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1328
    const/16 v18, 0x0

    .line 1330
    .local v18, "response":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    invoke-static/range {p0 .. p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1332
    new-instance v0, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;-><init>()V

    .local v0, "superclave":Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    .line 1335
    :try_start_0
    invoke-virtual/range {v0 .. v16}, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/LimitesTransferencias;I)V

    .line 1341
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->execute()V

    .line 1342
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Valida_SuperClave;->getResult()Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v18

    .line 1356
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1357
    return-object v18

    .line 1343
    :catch_0
    move-exception v17

    .line 1344
    .local v17, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1345
    throw v17

    .line 1346
    .end local v17    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v17

    .line 1347
    .local v17, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1348
    throw v17

    .line 1349
    .end local v17    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v17

    .line 1351
    .local v17, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1352
    throw v17

    .line 1353
    .end local v17    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static transf_terceros_verifica(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    .locals 11
    .param p0, "_act"    # Landroid/app/Activity;
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "cuentaCliente"    # Ljava/lang/String;
    .param p3, "codProducto"    # Ljava/lang/String;
    .param p4, "rutDestinatario"    # Ljava/lang/String;
    .param p5, "cuentaDestino"    # Ljava/lang/String;
    .param p6, "codBancoDestino"    # Ljava/lang/String;
    .param p7, "tipoCuenta"    # Ljava/lang/String;
    .param p8, "monto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 1210
    const/4 v10, 0x0

    .line 1212
    .local v10, "response":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 1214
    new-instance v0, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;-><init>()V

    .local v0, "verifica":Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1217
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1220
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->execute()V

    .line 1221
    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Transf_Terceros_Verifica;->getResult()Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 1235
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1237
    return-object v10

    .line 1222
    :catch_0
    move-exception v9

    .line 1223
    .local v9, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1224
    throw v9

    .line 1225
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v9

    .line 1226
    .local v9, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1227
    throw v9

    .line 1228
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v9

    .line 1230
    .local v9, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    .line 1231
    throw v9

    .line 1232
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method
