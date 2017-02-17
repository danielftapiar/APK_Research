.class Lcl/santander/santanderCL/ws/security/SecurityHeader$2;
.super Ljava/lang/Thread;
.source "SecurityHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/santanderCL/ws/security/SecurityHeader;->startRenoveToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iOperations:Lcl/santander/santanderCL/operations/IOperations;

.field final synthetic this$0:Lcl/santander/santanderCL/ws/security/SecurityHeader;

.field timeSleep:I

.field timeout:I


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/ws/security/SecurityHeader;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->this$0:Lcl/santander/santanderCL/ws/security/SecurityHeader;

    .line 142
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 145
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->iOperations:Lcl/santander/santanderCL/operations/IOperations;

    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->iOperations:Lcl/santander/santanderCL/operations/IOperations;

    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getTIMEOUT_APP()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeout:I

    .line 148
    const v0, 0xea60

    iput v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeSleep:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 152
    :goto_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    return-void

    .line 156
    :cond_0
    :try_start_0
    iget v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeSleep:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->sleep(J)V

    .line 158
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 159
    .local v2, "now":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 160
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getLastUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 159
    sub-long v0, v3, v5

    .line 162
    .local v0, "dif":J
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 165
    const-string v3, "TIMEOUT"

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EL TIEMPO DE INACTIVIDAD HA SIDO :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    const-string v5, " segundos."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    .line 172
    const-string v3, "TIMEOUT"

    .line 173
    const-string v4, "===================== EXCEPTION DE INACTIVIDAD ===================="

    .line 172
    invoke-static {v3, v4}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->this$0:Lcl/santander/santanderCL/ws/security/SecurityHeader;

    # getter for: Lcl/santander/santanderCL/ws/security/SecurityHeader;->messageHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->access$0(Lcl/santander/santanderCL/ws/security/SecurityHeader;)Landroid/os/Handler;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->this$0:Lcl/santander/santanderCL/ws/security/SecurityHeader;

    # getter for: Lcl/santander/santanderCL/ws/security/SecurityHeader;->messageHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->access$0(Lcl/santander/santanderCL/ws/security/SecurityHeader;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 174
    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 193
    .end local v0    # "dif":J
    .end local v2    # "now":Ljava/util/Date;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 181
    .restart local v0    # "dif":J
    .restart local v2    # "now":Ljava/util/Date;
    :cond_1
    iget v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeout:I

    int-to-long v3, v3

    sub-long/2addr v3, v0

    long-to-int v3, v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeSleep:I

    .line 183
    iget v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeSleep:I

    if-gez v3, :cond_2

    .line 184
    iget v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeout:I

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeSleep:I

    .line 187
    :cond_2
    const-string v3, "TIMEOUT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SIGUIENTE COMPROBACION EN "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    iget v5, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;->timeSleep:I

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SEGUNDOS."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v3, v4}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
