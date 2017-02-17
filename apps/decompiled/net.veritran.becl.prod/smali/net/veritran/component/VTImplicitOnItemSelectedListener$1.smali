.class Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;
.super Landroid/os/AsyncTask;
.source "VTImplicitOnItemSelectedListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTImplicitOnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTImplicitOnItemSelectedListener;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lnet/veritran/component/VTImplicitOnItemSelectedListener;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTImplicitOnItemSelectedListener;

    .prologue
    .line 57
    iput-object p1, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;->this$0:Lnet/veritran/component/VTImplicitOnItemSelectedListener;

    iput p2, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;->val$pos:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, [Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;->doInBackground([Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;->this$0:Lnet/veritran/component/VTImplicitOnItemSelectedListener;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v2, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener$1;->val$pos:I

    # invokes: Lnet/veritran/component/VTImplicitOnItemSelectedListener;->onChange(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;I)V
    invoke-static {v0, v1, v2}, Lnet/veritran/component/VTImplicitOnItemSelectedListener;->access$000(Lnet/veritran/component/VTImplicitOnItemSelectedListener;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;I)V

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
