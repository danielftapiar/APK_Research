.class Lcl/santander/smartphone/IndicadoresFinancieros$4;
.super Ljava/lang/Object;
.source "IndicadoresFinancieros.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/IndicadoresFinancieros;->cargarIndicadores()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/IndicadoresFinancieros;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/IndicadoresFinancieros;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/IndicadoresFinancieros$4;->this$0:Lcl/santander/smartphone/IndicadoresFinancieros;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros$4;->this$0:Lcl/santander/smartphone/IndicadoresFinancieros;

    # getter for: Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v0}, Lcl/santander/smartphone/IndicadoresFinancieros;->access$1(Lcl/santander/smartphone/IndicadoresFinancieros;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 190
    sput-boolean v1, Lcl/santander/smartphone/Global;->indicadores:Z

    .line 192
    return-void
.end method
