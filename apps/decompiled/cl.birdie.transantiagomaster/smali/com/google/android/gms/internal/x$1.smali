.class final Lcom/google/android/gms/internal/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final lb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic lc:Lcom/google/android/gms/internal/v;

.field final synthetic ld:Lcom/google/android/gms/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/internal/v;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/x$1;->ld:Lcom/google/android/gms/internal/x;

    iput-object p2, p0, Lcom/google/android/gms/internal/x$1;->lc:Lcom/google/android/gms/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/x$1;->lc:Lcom/google/android/gms/internal/v;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/x$1;->lb:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/x$1;->ld:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a$239b333c(Lcom/google/android/gms/internal/x;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/x$1;->lb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/v;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/x$1;->ld:Lcom/google/android/gms/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Lcom/google/android/gms/internal/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v;->b(Lcom/google/android/gms/internal/ah;)V

    :cond_0
    return-void
.end method
