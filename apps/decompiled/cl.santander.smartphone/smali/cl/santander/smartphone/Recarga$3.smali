.class Lcl/santander/smartphone/Recarga$3;
.super Ljava/lang/Object;
.source "Recarga.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Recarga;->initSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Recarga;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Recarga;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "_option"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 184
    add-int/lit8 v0, p3, -0x1

    .line 185
    .local v0, "opc":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-boolean v1, v1, Lcl/santander/smartphone/Recarga;->m_bFormVisible:Z

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, v1, Lcl/santander/smartphone/Recarga;->m_RecargaFormLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v2, v2, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, v1, Lcl/santander/smartphone/Recarga;->bt_Aceptar:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcl/santander/smartphone/Recarga;->m_bFormVisible:Z

    .line 193
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v2, v1, Lcl/santander/smartphone/Recarga;->tv_instrucciones:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    invoke-virtual {v3}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, v1, Lcl/santander/smartphone/Recarga;->m_Operadoras:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNombre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    invoke-virtual {v1, v0}, Lcl/santander/smartphone/Recarga;->setInputMonto(I)V

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iput-boolean v3, v1, Lcl/santander/smartphone/Recarga;->m_bFormVisible:Z

    .line 200
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, v1, Lcl/santander/smartphone/Recarga;->bt_Aceptar:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, v1, Lcl/santander/smartphone/Recarga;->m_RecargaFormLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcl/santander/smartphone/Recarga$3;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v2, v2, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
