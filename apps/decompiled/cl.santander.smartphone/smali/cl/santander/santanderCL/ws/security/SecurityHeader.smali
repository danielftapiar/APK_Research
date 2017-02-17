.class public final Lcl/santander/santanderCL/ws/security/SecurityHeader;
.super Ljava/lang/Object;
.source "SecurityHeader.java"


# static fields
.field private static instance:Lcl/santander/santanderCL/ws/security/SecurityHeader;


# instance fields
.field binarySecurityToken:Ljava/lang/String;

.field depositoPlazoIniciar:Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

.field dialog:Landroid/app/Dialog;

.field private lastUpDate:Ljava/util/Date;

.field private messageHandler:Landroid/os/Handler;

.field phSession:Ljava/lang/String;

.field private running:Z

.field segmento:Ljava/lang/String;

.field private threadRenoveToken:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lcl/santander/santanderCL/ws/security/SecurityHeader$1;

    invoke-direct {v0, p0}, Lcl/santander/santanderCL/ws/security/SecurityHeader$1;-><init>(Lcl/santander/santanderCL/ws/security/SecurityHeader;)V

    iput-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->messageHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcl/santander/santanderCL/ws/security/SecurityHeader;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->instance:Lcl/santander/santanderCL/ws/security/SecurityHeader;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcl/santander/santanderCL/ws/security/SecurityHeader;

    invoke-direct {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;-><init>()V

    sput-object v0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->instance:Lcl/santander/santanderCL/ws/security/SecurityHeader;

    .line 38
    :cond_0
    sget-object v0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->instance:Lcl/santander/santanderCL/ws/security/SecurityHeader;

    return-object v0
.end method

.method private startRenoveToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->running:Z

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->running:Z

    .line 140
    const-string v0, "TIMEOUT"

    const-string v1, "RUN EJECUTO GESTION TIMEOUT"

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;

    invoke-direct {v0, p0}, Lcl/santander/santanderCL/ws/security/SecurityHeader$2;-><init>(Lcl/santander/santanderCL/ws/security/SecurityHeader;)V

    iput-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    .line 202
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "TIMEOUT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process is running :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->running:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->stopRenoveToken()V

    .line 55
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setBinarySecurityToken(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setSegmento(Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->stopRenoveToken()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBinarySecurityToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->binarySecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDepositoPlazoIniciar()Lcl/santander/santanderCL/data/MatrizConsultaInversiones;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->depositoPlazoIniciar:Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->lastUpDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->lastUpDate:Ljava/util/Date;

    .line 117
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->lastUpDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPhSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->lastUpDate:Ljava/util/Date;

    .line 98
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->phSession:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->segmento:Ljava/lang/String;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->running:Z

    return v0
.end method

.method public setBinarySecurityToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "binarySecurityToken"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->binarySecurityToken:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDepositoPlazoIniciar(Lcl/santander/santanderCL/data/MatrizConsultaInversiones;)V
    .locals 0
    .param p1, "depositoPlazoIniciar"    # Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    .prologue
    .line 92
    iput-object p1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->depositoPlazoIniciar:Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    .line 93
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialogo"    # Landroid/app/Dialog;

    .prologue
    .line 45
    iput-object p1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->dialog:Landroid/app/Dialog;

    .line 46
    return-void
.end method

.method public setPhSession(Ljava/lang/String;)V
    .locals 1
    .param p1, "phSession"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->phSession:Ljava/lang/String;

    .line 103
    iget-boolean v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->running:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->phSession:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->phSession:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->startRenoveToken(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setSegmento(Ljava/lang/String;)V
    .locals 0
    .param p1, "segmento"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->segmento:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public stopRenoveToken()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->running:Z

    .line 122
    iput-object v1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->binarySecurityToken:Ljava/lang/String;

    .line 124
    :try_start_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    iget-object v0, v0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 125
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    iget-object v0, v0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iput-object v1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    .line 131
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 129
    iput-object v1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    iput-object v1, p0, Lcl/santander/santanderCL/ws/security/SecurityHeader;->threadRenoveToken:Ljava/lang/Thread;

    .line 130
    throw v0
.end method
