.class final Lcom/google/android/gms/tagmanager/cs$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZQ:Lcom/google/android/gms/tagmanager/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$4;->ZQ:Lcom/google/android/gms/tagmanager/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tagmanager/cq$e;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cm;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->lo()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->lp()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->kM()Lcom/google/android/gms/tagmanager/ck;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->lo()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->lt()Ljava/util/List;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->kN()Lcom/google/android/gms/tagmanager/ck;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->lp()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->lu()Ljava/util/List;

    return-void
.end method
