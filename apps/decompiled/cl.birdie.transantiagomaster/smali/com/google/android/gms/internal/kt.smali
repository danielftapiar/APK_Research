.class public abstract Lcom/google/android/gms/internal/kt;
.super Ljava/lang/Object;


# instance fields
.field protected volatile adY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/kt;->adY:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ko;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kt;->mx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/kt;->adY:I

    return v0
.end method

.method public final mF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kt;->adY:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kt;->c()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/kt;->adY:I

    return v0
.end method

.method protected mx()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ku;->e(Lcom/google/android/gms/internal/kt;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
