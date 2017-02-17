.class public Lcom/prey/actions/PreyStatus;
.super Ljava/lang/Object;
.source "PreyStatus.java"


# static fields
.field private static instance:Lcom/prey/actions/PreyStatus;


# instance fields
.field private isTakenPicture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/actions/PreyStatus;->instance:Lcom/prey/actions/PreyStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/actions/PreyStatus;->isTakenPicture:Z

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/prey/actions/PreyStatus;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/prey/actions/PreyStatus;->instance:Lcom/prey/actions/PreyStatus;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/prey/actions/PreyStatus;

    invoke-direct {v0}, Lcom/prey/actions/PreyStatus;-><init>()V

    sput-object v0, Lcom/prey/actions/PreyStatus;->instance:Lcom/prey/actions/PreyStatus;

    .line 21
    :cond_0
    sget-object v0, Lcom/prey/actions/PreyStatus;->instance:Lcom/prey/actions/PreyStatus;

    return-object v0
.end method


# virtual methods
.method public isTakenPicture()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/prey/actions/PreyStatus;->isTakenPicture:Z

    return v0
.end method

.method public setTakenPicture(Z)V
    .locals 0
    .param p1, "isTakenPicture"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/prey/actions/PreyStatus;->isTakenPicture:Z

    .line 32
    return-void
.end method
