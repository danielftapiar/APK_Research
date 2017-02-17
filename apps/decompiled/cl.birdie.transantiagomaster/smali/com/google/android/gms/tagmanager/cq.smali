.class final Lcom/google/android/gms/tagmanager/cq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/cq$e;,
        Lcom/google/android/gms/tagmanager/cq$a;
    }
.end annotation


# direct methods
.method public static g(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/d$a;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/d$a;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    iput v0, v1, Lcom/google/android/gms/internal/d$a;->type:I

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/d$a;->fW:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/d$a;->fX:Z

    :cond_0
    return-object v1
.end method
