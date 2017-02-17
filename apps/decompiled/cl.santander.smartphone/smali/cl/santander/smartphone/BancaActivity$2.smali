.class Lcl/santander/smartphone/BancaActivity$2;
.super Ljava/lang/Object;
.source "BancaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/BancaActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/BancaActivity;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/BancaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/BancaActivity$2;->this$0:Lcl/santander/smartphone/BancaActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 207
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$2;->this$0:Lcl/santander/smartphone/BancaActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/BancaActivity;->setResult(I)V

    .line 208
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$2;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v0}, Lcl/santander/smartphone/BancaActivity;->finish()V

    .line 209
    return-void
.end method
