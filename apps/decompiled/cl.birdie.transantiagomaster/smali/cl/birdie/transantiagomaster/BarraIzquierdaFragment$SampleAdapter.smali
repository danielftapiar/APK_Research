.class public final Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BarraIzquierdaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->this$0:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 109
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    :cond_0
    const v0, 0x7f080077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p0, p1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    iget v1, v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    const v0, 0x7f080078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0, p1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-object p2
.end method
