.class public Lnet/veritran/VisualInputComponent;
.super Ljava/lang/Object;
.source "VisualInputComponent.java"


# static fields
.field public static final CHECKBOX:I = 0x5

.field public static final COMBO:I = 0x2

.field public static final GRID:I = 0x3

.field public static final HIDDEN:I = 0x4

.field public static final PASSWORD:I = 0x0

.field public static final RADIO:I = 0x6

.field public static final TEXTFIELD:I = 0x1


# instance fields
.field private component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

.field private componentId:Ljava/lang/String;

.field private formId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;Landroid/view/View;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    .line 63
    iput-object p2, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    .line 64
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    .line 65
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    .line 66
    const-string v0, "formId"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;Landroid/view/View;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    .line 54
    iput-object p2, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    .line 55
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    .line 56
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    .line 57
    const-string v0, "formId"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;Lnet/veritran/component/view/VTTextInterface;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;
    .param p2, "v"    # Lnet/veritran/component/view/VTTextInterface;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    .line 45
    check-cast p2, Landroid/view/View;

    .end local p2    # "v":Lnet/veritran/component/view/VTTextInterface;
    iput-object p2, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    .line 46
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    .line 47
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    .line 48
    const-string v0, "formId"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;Landroid/widget/GridView;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;
    .param p2, "v"    # Landroid/widget/GridView;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    .line 90
    iput-object p2, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    .line 91
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    .line 92
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    .line 93
    const-string v0, "formId"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;
    .param p2, "v"    # Landroid/widget/Spinner;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    .line 81
    iput-object p2, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    .line 82
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    .line 83
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    .line 84
    const-string v0, "formId"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;Lnet/veritran/component/view/VTTextInterface;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;
    .param p2, "v"    # Lnet/veritran/component/view/VTTextInterface;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    .line 36
    check-cast p2, Landroid/view/View;

    .end local p2    # "v":Lnet/veritran/component/view/VTTextInterface;
    iput-object p2, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    .line 37
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    .line 38
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    .line 39
    const-string v0, "formId"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;Landroid/view/View;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x6

    iput v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    .line 72
    iput-object p2, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    .line 73
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    .line 74
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    .line 75
    const-string v0, "formId"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/veritran/VisualInputComponent;->component:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnet/veritran/VisualInputComponent;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFormId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/veritran/VisualInputComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lnet/veritran/VisualInputComponent;->type:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/veritran/VisualInputComponent;->view:Landroid/view/View;

    return-object v0
.end method

.method public setFormId(Ljava/lang/String;)V
    .locals 0
    .param p1, "formId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lnet/veritran/VisualInputComponent;->formId:Ljava/lang/String;

    .line 130
    return-void
.end method
