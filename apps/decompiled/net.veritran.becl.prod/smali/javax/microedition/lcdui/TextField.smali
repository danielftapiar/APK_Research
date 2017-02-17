.class public Ljavax/microedition/lcdui/TextField;
.super Ljavax/microedition/lcdui/Item;
.source "TextField.java"


# static fields
.field public static final ANY:I = 0x0

.field public static final CONSTRAINT_MASK:I = 0xffff

.field public static final DECIMAL:I = 0x5

.field public static final EMAILADDR:I = 0x1

.field public static final INITIAL_CAPS_SENTENCE:I = 0x200000

.field public static final INITIAL_CAPS_WORD:I = 0x100000

.field public static final NON_PREDICTIVE:I = 0x80000

.field public static final NUMERIC:I = 0x2

.field public static final PASSWORD:I = 0x10000

.field public static final PHONENUMBER:I = 0x3

.field public static final SENSITIVE:I = 0x40000

.field public static final UNEDITABLE:I = 0x20000

.field public static final URL:I = 0x4


# instance fields
.field private caret:I

.field private caretVisible:Z

.field private constraints:I

.field private field:Ljava/lang/String;

.field private inputMethodListener:Lorg/microemu/device/InputMethodListener;

.field private maxSize:I

.field stringComponent:Ljavax/microedition/lcdui/StringComponent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "constraints"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljavax/microedition/lcdui/TextField$1;

    invoke-direct {v0, p0}, Ljavax/microedition/lcdui/TextField$1;-><init>(Ljavax/microedition/lcdui/TextField;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/TextField;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    .line 103
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createTextFieldUI(Ljavax/microedition/lcdui/TextField;)Lorg/microemu/device/ui/TextFieldUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 105
    if-gtz p3, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p0, p4}, Ljavax/microedition/lcdui/TextField;->setConstraints(I)V

    .line 109
    invoke-static {p2, p4}, Lorg/microemu/device/InputMethod;->validate(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 112
    :cond_1
    if-gtz p3, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 115
    :cond_2
    iput p3, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    .line 116
    new-instance v0, Ljavax/microedition/lcdui/StringComponent;

    invoke-direct {v0}, Ljavax/microedition/lcdui/StringComponent;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    .line 117
    if-eqz p2, :cond_3

    .line 118
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    .line 122
    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/StringComponent;->setWidthDecreaser(I)V

    .line 123
    return-void

    .line 120
    :cond_3
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 236
    add-int v1, p1, p2

    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 239
    :cond_0
    const-string v0, ""

    .line 240
    .local v0, "newtext":Ljava/lang/String;
    if-lez p1, :cond_1

    .line 241
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_1
    add-int v1, p1, p2

    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 244
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    add-int v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_2
    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->repaint()V

    .line 248
    return-void
.end method

.method public getCaretPosition()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Ljavax/microedition/lcdui/TextField;->caret:I

    return v0
.end method

.method public getChars([C)I
    .locals 3
    .param p1, "data"    # [C

    .prologue
    const/4 v2, 0x0

    .line 177
    array-length v0, p1

    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 182
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getConstraints()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    return v0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidTextFieldUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/TextFieldUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/TextFieldUI;->getString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;I)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 206
    iget v1, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    invoke-static {p1, v1}, Lorg/microemu/device/InputMethod;->validate(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 209
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    if-le v1, v2, :cond_1

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 212
    :cond_1
    const-string v0, ""

    .line 213
    .local v0, "newtext":Ljava/lang/String;
    if-lez p2, :cond_2

    .line 214
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 218
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_3
    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->repaint()V

    .line 222
    return-void
.end method

.method public insert([CIII)V
    .locals 2
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "position"    # I

    .prologue
    .line 227
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p4}, Ljavax/microedition/lcdui/TextField;->insert(Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method isFocusable()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x3

    .line 322
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 324
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 325
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v0

    .line 326
    .local v0, "savedColor":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    const/16 v1, 0x7f

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    .line 329
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v5, v5, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 332
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 335
    :cond_1
    invoke-virtual {p1, v6, v6}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 336
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/TextField;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 337
    invoke-virtual {p1, v3, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 338
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v4, v1}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 340
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getHeight()I

    move-result v1

    return v1
.end method

.method paintContent(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 346
    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v2, p1}, Ljavax/microedition/lcdui/StringComponent;->paint(Ljavax/microedition/lcdui/Graphics;)I

    .line 347
    iget-boolean v2, p0, Ljavax/microedition/lcdui/TextField;->caretVisible:Z

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    iget v3, p0, Ljavax/microedition/lcdui/TextField;->caret:I

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/StringComponent;->getCharPositionX(I)I

    move-result v0

    .line 349
    .local v0, "x_pos":I
    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    iget v3, p0, Ljavax/microedition/lcdui/TextField;->caret:I

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/StringComponent;->getCharPositionY(I)I

    move-result v1

    .line 350
    .local v1, "y_pos":I
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v0, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 352
    .end local v0    # "x_pos":I
    .end local v1    # "y_pos":I
    :cond_0
    return-void
.end method

.method setCaretPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 357
    iput p1, p0, Ljavax/microedition/lcdui/TextField;->caret:I

    .line 358
    return-void
.end method

.method setCaretVisible(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Ljavax/microedition/lcdui/TextField;->caretVisible:Z

    .line 364
    return-void
.end method

.method public setChars([CII)V
    .locals 2
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->repaint()V

    .line 201
    return-void

    .line 191
    :cond_0
    iget v1, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    if-le p3, v1, :cond_1

    .line 192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 195
    .local v0, "newtext":Ljava/lang/String;
    iget v1, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    invoke-static {v0, v1}, Lorg/microemu/device/InputMethod;->validate(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 198
    :cond_2
    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConstraints(I)V
    .locals 3
    .param p1, "constraints"    # I

    .prologue
    const v1, 0xffff

    .line 284
    and-int v0, p1, v1

    if-ltz v0, :cond_0

    and-int v0, p1, v1

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "constraints "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is an illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    .line 289
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/microemu/device/InputMethod;->validate(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    .line 292
    :cond_2
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/TextFieldUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/TextFieldUI;->setConstraints(I)V

    .line 293
    return-void
.end method

.method setFocus(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 390
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 391
    if-eqz p1, :cond_0

    .line 393
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v1

    invoke-interface {v1}, Lorg/microemu/device/Device;->getInputMethod()Lorg/microemu/device/InputMethod;

    move-result-object v0

    .line 394
    .local v0, "inputMethod":Lorg/microemu/device/InputMethod;
    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    invoke-virtual {v0, v1}, Lorg/microemu/device/InputMethod;->setInputMethodListener(Lorg/microemu/device/InputMethodListener;)V

    .line 395
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getMaxSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/microemu/device/InputMethod;->setMaxSize(I)V

    .line 396
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    .line 402
    .end local v0    # "inputMethod":Lorg/microemu/device/InputMethod;
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v1

    invoke-interface {v1}, Lorg/microemu/device/Device;->getInputMethod()Lorg/microemu/device/InputMethod;

    move-result-object v1

    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->inputMethodListener:Lorg/microemu/device/InputMethodListener;

    invoke-virtual {v1, v2}, Lorg/microemu/device/InputMethod;->removeInputMethodListener(Lorg/microemu/device/InputMethodListener;)V

    .line 400
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    goto :goto_0
.end method

.method public setInitialInputMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "characterSubset"    # Ljava/lang/String;

    .prologue
    .line 305
    return-void
.end method

.method public setMaxSize(I)I
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 259
    if-gtz p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 263
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    .line 265
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    .line 266
    return p1
.end method

.method public setString(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidTextFieldUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/TextFieldUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/TextFieldUI;->setString(Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method setString(Ljava/lang/String;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "caret"    # I

    .prologue
    .line 148
    iget v2, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    invoke-static {p1, v2}, Lorg/microemu/device/InputMethod;->validate(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 151
    :cond_0
    if-nez p1, :cond_1

    .line 152
    const-string v2, ""

    iput-object v2, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/StringComponent;->setText(Ljava/lang/String;)V

    .line 169
    :goto_0
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/TextField;->setCaretPosition(I)V

    .line 170
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljavax/microedition/lcdui/TextField;->setCaretVisible(Z)V

    .line 171
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->repaint()V

    .line 172
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    if-le v2, v3, :cond_2

    .line 156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 158
    :cond_2
    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->field:Ljava/lang/String;

    .line 159
    iget v2, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 160
    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v2, p1}, Ljavax/microedition/lcdui/StringComponent;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 164
    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_4
    iget-object v2, p0, Ljavax/microedition/lcdui/TextField;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/StringComponent;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method traverse(IIIZ)I
    .locals 2
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "action"    # Z

    .prologue
    const v0, 0x7fffffff

    .line 369
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 370
    if-lez p2, :cond_0

    .line 371
    neg-int v0, p2

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 377
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getHeight()I

    move-result v1

    if-le v1, p3, :cond_0

    .line 378
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    goto :goto_0

    .line 384
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
