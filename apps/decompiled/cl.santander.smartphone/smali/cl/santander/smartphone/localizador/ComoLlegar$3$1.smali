.class Lcl/santander/smartphone/localizador/ComoLlegar$3$1;
.super Ljava/lang/Object;
.source "ComoLlegar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/ComoLlegar$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/localizador/ComoLlegar$3;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/ComoLlegar$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$3$1;->this$1:Lcl/santander/smartphone/localizador/ComoLlegar$3;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iput-boolean v2, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 516
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$3$1;->this$1:Lcl/santander/smartphone/localizador/ComoLlegar$3;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar$3;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar$3;->access$0(Lcl/santander/smartphone/localizador/ComoLlegar$3;)Lcl/santander/smartphone/localizador/ComoLlegar;

    move-result-object v0

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$3$1;->this$1:Lcl/santander/smartphone/localizador/ComoLlegar$3;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar$3;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/ComoLlegar$3;->access$0(Lcl/santander/smartphone/localizador/ComoLlegar$3;)Lcl/santander/smartphone/localizador/ComoLlegar;

    move-result-object v1

    iget-object v1, v1, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 518
    return-void
.end method
