.class Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p1, p0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->a:I

    .line 276
    iput v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->b:I

    .line 277
    iput-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->c:Z

    .line 278
    iput-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->d:Z

    .line 279
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->e:J

    .line 280
    return-void
.end method
