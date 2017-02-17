.class public Lcom/prey/util/PreyTime;
.super Ljava/lang/Object;
.source "PreyTime.java"


# static fields
.field private static instance:Lcom/prey/util/PreyTime;


# instance fields
.field private running:Z

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/util/PreyTime;->instance:Lcom/prey/util/PreyTime;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prey/util/PreyTime;->time:J

    .line 22
    iput-boolean v2, p0, Lcom/prey/util/PreyTime;->running:Z

    .line 15
    iput-boolean v2, p0, Lcom/prey/util/PreyTime;->running:Z

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/prey/util/PreyTime;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/prey/util/PreyTime;->instance:Lcom/prey/util/PreyTime;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/prey/util/PreyTime;

    invoke-direct {v0}, Lcom/prey/util/PreyTime;-><init>()V

    sput-object v0, Lcom/prey/util/PreyTime;->instance:Lcom/prey/util/PreyTime;

    .line 28
    :cond_0
    sget-object v0, Lcom/prey/util/PreyTime;->instance:Lcom/prey/util/PreyTime;

    return-object v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, "cal":Ljava/util/Calendar;
    iget-boolean v1, p0, Lcom/prey/util/PreyTime;->running:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/prey/util/PreyTime;->time:J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/prey/util/PreyTime;->running:Z

    goto :goto_0
.end method

.method public setRunning(Z)V
    .locals 4
    .param p1, "running"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/prey/util/PreyTime;->running:Z

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 35
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 36
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/prey/util/PreyTime;->time:J

    .line 38
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    return-void
.end method
