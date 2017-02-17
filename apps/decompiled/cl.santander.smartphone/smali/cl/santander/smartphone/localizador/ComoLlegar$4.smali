.class Lcl/santander/smartphone/localizador/ComoLlegar$4;
.super Ljava/lang/Object;
.source "ComoLlegar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/ComoLlegar;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/ComoLlegar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$4;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$4;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/localizador/ComoLlegar;->setHasOptionsMenu(Z)V

    .line 567
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 568
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$4;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/localizador/ComoLlegar;->setHasOptionsMenu(Z)V

    .line 569
    return-void
.end method
