.class Lcl/santander/santanderCL/ws/CommunicationWS$2;
.super Ljava/lang/Object;
.source "CommunicationWS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/santanderCL/ws/CommunicationWS;->callURLPost(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

.field private final synthetic val$paramM:Ljava/lang/String;

.field private final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    iput-object p2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->val$paramM:Ljava/lang/String;

    iput-object p3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lorg/ksoap2/transport/HttpTransportSE;

    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->url:Ljava/lang/String;
    invoke-static {v2}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$0(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "androidHttpTransport":Lorg/ksoap2/transport/HttpTransportSE;
    sget-boolean v2, Lcl/santander/santanderCL/utils/Constant;->DEBUG:Z

    iput-boolean v2, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    .line 255
    :try_start_0
    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    # getter for: Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    .line 258
    :cond_0
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->val$paramM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/ksoap2/transport/HttpTransportSE;->callURLPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :goto_0
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 268
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Lcl/santander/santanderCL/exceptions/CommunicationException;
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    .end local v1    # "e":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_1
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS$2;->this$0:Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-static {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V

    goto :goto_0
.end method
