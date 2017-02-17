.class Lcl/santander/santanderCL/ws/CommunicationWS$4;
.super Ljava/lang/Object;
.source "CommunicationWS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

.field private final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    iput-object p2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 406
    new-instance v0, Lorg/ksoap2/transport/HttpTransportSE;

    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->url:Ljava/lang/String;
    invoke-static {v3}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$0(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "androidHttpTransport":Lorg/ksoap2/transport/HttpTransportSE;
    sget-boolean v3, Lcl/santander/santanderCL/utils/Constant;->DEBUG:Z

    iput-boolean v3, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    .line 412
    :try_start_0
    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 413
    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$1()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    .line 415
    :cond_0
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;
    invoke-static {v3}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$2(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/String;

    move-result-object v4

    .line 416
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;
    invoke-static {v3}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$3(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 415
    invoke-virtual {v0, v4, v3}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_3

    .line 430
    :goto_0
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 431
    return-void

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CommunicationException;
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v3, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_1
    move-exception v1

    .line 422
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v3, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0

    .line 423
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 425
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v3, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    .line 427
    .local v2, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$4;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0
.end method
