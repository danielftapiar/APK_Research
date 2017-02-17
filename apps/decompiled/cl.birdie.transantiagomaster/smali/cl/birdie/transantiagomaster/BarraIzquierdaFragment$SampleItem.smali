.class final Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;
.super Ljava/lang/Object;
.source "BarraIzquierdaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleItem"
.end annotation


# instance fields
.field public iconRes:I

.field public id:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

.field public tag:Ljava/lang/String;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V
    .locals 0
    .param p2, "id"    # Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "iconRes"    # I

    .prologue
    .line 98
    iput-object p1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;->this$0:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;->id:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    .line 100
    iput-object p3, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;->tag:Ljava/lang/String;

    .line 101
    iput p4, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;->iconRes:I

    .line 102
    return-void
.end method
