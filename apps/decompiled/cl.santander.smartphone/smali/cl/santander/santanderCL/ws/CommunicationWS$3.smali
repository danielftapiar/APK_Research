.class Lcl/santander/santanderCL/ws/CommunicationWS$3;
.super Ljava/lang/Object;
.source "CommunicationWS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/santanderCL/ws/CommunicationWS;->callURLGet()Ljava/lang/String;
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
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS$3;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    iput-object p2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    new-instance v0, Lorg/ksoap2/transport/HttpTransportSE;

    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$3;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->url:Ljava/lang/String;
    invoke-static {v2}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$0(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "androidHttpTransport":Lorg/ksoap2/transport/HttpTransportSE;
    sget-boolean v2, Lcl/santander/santanderCL/utils/Constant;->DEBUG:Z

    iput-boolean v2, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    .line 319
    :try_start_0
    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 320
    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    .line 322
    :cond_0
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$3;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-virtual {v0}, Lorg/ksoap2/transport/HttpTransportSE;->callURLGet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    :goto_0
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 332
    return-void

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CommunicationException;
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$3;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_1
    move-exception v1

    .line 328
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$3;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0
.end method
