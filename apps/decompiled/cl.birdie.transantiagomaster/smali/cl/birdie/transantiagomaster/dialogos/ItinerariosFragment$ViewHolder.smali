.class final Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;
.super Ljava/lang/Object;
.source "ItinerariosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private codigo:Landroid/widget/TextView;

.field private mRow:Landroid/view/View;

.field private texto:Landroid/widget/TextView;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;Landroid/view/View;)V
    .locals 1
    .param p2, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 309
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->codigo:Landroid/widget/TextView;

    .line 307
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->texto:Landroid/widget/TextView;

    .line 310
    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->mRow:Landroid/view/View;

    .line 311
    return-void
.end method


# virtual methods
.method public final getCodigo()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->codigo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->mRow:Landroid/view/View;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->codigo:Landroid/widget/TextView;

    .line 317
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->codigo:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTexto()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->texto:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->mRow:Landroid/view/View;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->texto:Landroid/widget/TextView;

    .line 324
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->texto:Landroid/widget/TextView;

    return-object v0
.end method
