.class Lcl/santander/smartphone/Ayuda$16;
.super Ljava/lang/Object;
.source "Ayuda.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Ayuda;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Ayuda;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Ayuda;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Ayuda$16;->this$0:Lcl/santander/smartphone/Ayuda;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda$16;->this$0:Lcl/santander/smartphone/Ayuda;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Ayuda;->setHasOptionsMenu(Z)V

    .line 414
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 415
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda$16;->this$0:Lcl/santander/smartphone/Ayuda;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Ayuda;->setHasOptionsMenu(Z)V

    .line 416
    return-void
.end method
