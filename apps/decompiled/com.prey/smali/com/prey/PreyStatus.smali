.class public Lcom/prey/PreyStatus;
.super Ljava/lang/Object;
.source "PreyStatus.java"


# static fields
.field private static instance:Lcom/prey/PreyStatus;


# instance fields
.field private isAlarmStart:Z

.field private isTakenPicture:Z

.field private preyConfigurationActivityResume:Z

.field private preyPopUpOnclick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/PreyStatus;->instance:Lcom/prey/PreyStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/prey/PreyStatus;->preyConfigurationActivityResume:Z

    .line 26
    iput-boolean v0, p0, Lcom/prey/PreyStatus;->preyPopUpOnclick:Z

    .line 28
    iput-boolean v0, p0, Lcom/prey/PreyStatus;->isTakenPicture:Z

    .line 30
    iput-boolean v0, p0, Lcom/prey/PreyStatus;->isAlarmStart:Z

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/prey/PreyStatus;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/prey/PreyStatus;->instance:Lcom/prey/PreyStatus;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/prey/PreyStatus;

    invoke-direct {v0}, Lcom/prey/PreyStatus;-><init>()V

    sput-object v0, Lcom/prey/PreyStatus;->instance:Lcom/prey/PreyStatus;

    .line 21
    :cond_0
    sget-object v0, Lcom/prey/PreyStatus;->instance:Lcom/prey/PreyStatus;

    return-object v0
.end method


# virtual methods
.method public isAlarmStart()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/prey/PreyStatus;->isAlarmStart:Z

    return v0
.end method

.method public isPreyConfigurationActivityResume()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/prey/PreyStatus;->preyConfigurationActivityResume:Z

    return v0
.end method

.method public isPreyPopUpOnclick()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/prey/PreyStatus;->preyPopUpOnclick:Z

    return v0
.end method

.method public isTakenPicture()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/prey/PreyStatus;->isTakenPicture:Z

    return v0
.end method

.method public setAlarmStart()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prey/PreyStatus;->isAlarmStart:Z

    .line 47
    return-void
.end method

.method public setAlarmStop()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/PreyStatus;->isAlarmStart:Z

    .line 51
    return-void
.end method

.method public setPreyConfigurationActivityResume(Z)V
    .locals 0
    .param p1, "preyConfigurationActivityResume"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/prey/PreyStatus;->preyConfigurationActivityResume:Z

    .line 39
    return-void
.end method

.method public setPreyPopUpOnclick(Z)V
    .locals 0
    .param p1, "preyPopUpOnclick"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/prey/PreyStatus;->preyPopUpOnclick:Z

    .line 67
    return-void
.end method

.method public setTakenPicture(Z)V
    .locals 0
    .param p1, "isTakenPicture"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/prey/PreyStatus;->isTakenPicture:Z

    .line 59
    return-void
.end method
