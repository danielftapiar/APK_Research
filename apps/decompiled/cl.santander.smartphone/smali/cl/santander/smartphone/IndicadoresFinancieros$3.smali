.class Lcl/santander/smartphone/IndicadoresFinancieros$3;
.super Ljava/lang/Object;
.source "IndicadoresFinancieros.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/IndicadoresFinancieros;->initComponents()V
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
    iput-object p1, p0, Lcl/santander/smartphone/IndicadoresFinancieros$3;->this$0:Lcl/santander/smartphone/IndicadoresFinancieros;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros$3;->this$0:Lcl/santander/smartphone/IndicadoresFinancieros;

    const/4 v1, 0x2

    # invokes: Lcl/santander/smartphone/IndicadoresFinancieros;->selectButton(I)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/IndicadoresFinancieros;->access$0(Lcl/santander/smartphone/IndicadoresFinancieros;I)V

    .line 136
    return-void
.end method
