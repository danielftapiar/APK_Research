.class Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;
.super Ljavax/microedition/lcdui/ImageStringItem;
.source "ChoiceGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/ChoiceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChoiceItem"
.end annotation


# instance fields
.field box:Ljavax/microedition/lcdui/Image;

.field private font:Ljavax/microedition/lcdui/Font;

.field private selected:Z

.field private final this$0:Ljavax/microedition/lcdui/ChoiceGroup;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/ChoiceGroup;Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljava/lang/String;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "image"    # Ljavax/microedition/lcdui/Image;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 714
    iput-object p1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    .line 715
    invoke-direct {p0, p2, p3, p4}, Ljavax/microedition/lcdui/ImageStringItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->setSelectedState(Z)V

    .line 717
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->font:Ljavax/microedition/lcdui/Font;

    .line 718
    return-void
.end method


# virtual methods
.method getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->font:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "height":I
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    .line 739
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 740
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    .line 742
    :cond_1
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 743
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v0

    .line 745
    :cond_2
    return v0
.end method

.method isSelected()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->selected:Z

    return v0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 5
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x0

    .line 750
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    if-nez v3, :cond_1

    move v1, v2

    .line 780
    :cond_0
    :goto_0
    return v1

    .line 754
    :cond_1
    const/4 v0, 0x0

    .line 755
    .local v0, "widthAddition":I
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    if-eqz v3, :cond_2

    .line 756
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v3, v2, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 757
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v3, :cond_4

    .line 758
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    .line 759
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 768
    :cond_2
    :goto_1
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v3, :cond_3

    .line 769
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 770
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v3, v2, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 771
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 774
    :cond_3
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v3, p1}, Ljavax/microedition/lcdui/StringComponent;->paint(Ljavax/microedition/lcdui/Graphics;)I

    move-result v1

    .line 776
    .local v1, "y":I
    if-eqz v0, :cond_0

    .line 777
    neg-int v3, v0

    invoke-virtual {p1, v3, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto :goto_0

    .line 762
    .end local v1    # "y":I
    :cond_4
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    add-int/lit8 v0, v3, 0x2

    .line 763
    iget-object v3, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto :goto_1
.end method

.method setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 2
    .param p1, "f"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 791
    if-nez p1, :cond_0

    .line 792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 795
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 796
    iput-object p1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->font:Ljavax/microedition/lcdui/Font;

    .line 797
    :cond_1
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 726
    iput-object p1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "width":I
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 731
    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 732
    :cond_2
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/StringComponent;->setWidthDecreaser(I)V

    .line 733
    return-void
.end method

.method setSelectedState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 801
    iput-boolean p1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->selected:Z

    .line 803
    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v0, v0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v0, v0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 804
    const/4 v0, 0x1

    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v1, v1, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Ljavax/microedition/lcdui/ChoiceGroup;->access$000()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup$ChoiceItem;->box:Ljavax/microedition/lcdui/Image;

    .line 807
    :cond_0
    return-void

    .line 804
    :cond_1
    invoke-static {}, Ljavax/microedition/lcdui/ChoiceGroup;->access$100()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Ljavax/microedition/lcdui/ChoiceGroup;->access$200()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljavax/microedition/lcdui/ChoiceGroup;->access$300()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    goto :goto_0
.end method
