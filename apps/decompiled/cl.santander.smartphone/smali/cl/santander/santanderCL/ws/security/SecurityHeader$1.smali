.class Lcl/santander/santanderCL/ws/security/SecurityHeader$1;
.super Landroid/os/Handler;
.source "SecurityHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/ws/security/SecurityHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/santanderCL/ws/security/SecurityHeader;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/ws/security/SecurityHeader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader$1;->this$0:Lcl/santander/santanderCL/ws/security/SecurityHeader;

    .line 210
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 222
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "TIMEOUT"

    .line 224
    const-string v1, "SE MUESTRA EL DIAOLOGO DE INACTIVIDAD"

    .line 223
    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->clear()V

    goto :goto_0

    .line 227
    :cond_1
    :try_start_1
    const-string v0, "FALTA LA ASIGNACION DEL DIALOGO AL SECURITYHEADER."

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    goto :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
