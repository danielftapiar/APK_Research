.class Lcl/santander/smartphone/HomeCuentas$1;
.super Ljava/lang/Object;
.source "HomeCuentas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeCuentas;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/HomeCuentas;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeCuentas;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeCuentas$1;->this$0:Lcl/santander/smartphone/HomeCuentas;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas$1;->this$0:Lcl/santander/smartphone/HomeCuentas;

    # getter for: Lcl/santander/smartphone/HomeCuentas;->id:I
    invoke-static {v1}, Lcl/santander/smartphone/HomeCuentas;->access$0(Lcl/santander/smartphone/HomeCuentas;)I

    move-result v1

    sput v1, Lcl/santander/smartphone/Global;->idPulsado:I

    .line 100
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas$1;->this$0:Lcl/santander/smartphone/HomeCuentas;

    iget-object v1, v1, Lcl/santander/smartphone/HomeCuentas;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "bar":Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 102
    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 103
    :cond_0
    return-void
.end method
