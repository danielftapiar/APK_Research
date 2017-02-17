.class final Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;
.super Ljava/lang/Object;
.source "ServiciosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mRow:Landroid/view/View;

.field private recorrido:Landroid/widget/TextView;

.field private servicio:Landroid/widget/TextView;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;Landroid/view/View;)V
    .locals 1
    .param p2, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->servicio:Landroid/widget/TextView;

    .line 232
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->recorrido:Landroid/widget/TextView;

    .line 235
    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->mRow:Landroid/view/View;

    .line 236
    return-void
.end method


# virtual methods
.method public final getRecorrido()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->recorrido:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->mRow:Landroid/view/View;

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->recorrido:Landroid/widget/TextView;

    .line 249
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->recorrido:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getServicio()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->servicio:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->mRow:Landroid/view/View;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->servicio:Landroid/widget/TextView;

    .line 242
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->servicio:Landroid/widget/TextView;

    return-object v0
.end method
