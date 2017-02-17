.class public Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RenderThemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$1;,
        Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

.field private final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;",
            ">;"
        }
    .end annotation
.end field

.field private level:I

.field private renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

.field private final ruleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 99
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    .line 102
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    return-void
.end method

.method private checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "element"    # Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$1;->$SwitchMap$org$mapsforge$android$maps$rendertheme$RenderThemeHandler$Element:[I

    invoke-virtual {p2}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getRenderTheme(Ljava/io/InputStream;)Lorg/mapsforge/android/maps/rendertheme/RenderTheme;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;-><init>()V

    .line 67
    .local v0, "renderThemeHandler":Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 68
    .local v1, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 69
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 70
    iget-object v2, v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    return-object v2
.end method

.method public static logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "element"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "attributeIndex"    # I

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "unknown attribute in element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 96
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing element: rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->level:I

    invoke-virtual {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->setLevels(I)V

    .line 111
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->complete()V

    .line 112
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 118
    const-string v0, "rule"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->addRule(Lorg/mapsforge/android/maps/rendertheme/Rule;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/Rule;

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    goto :goto_0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 130
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    const-string v10, "rendertheme"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 137
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 138
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    move-result-object v10

    iput-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    .line 191
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v10, "rule"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 143
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    move-object/from16 v0, p4

    invoke-static {p2, v0, v10}, Lorg/mapsforge/android/maps/rendertheme/Rule;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/Rule;

    move-result-object v8

    .line 144
    .local v8, "rule":Lorg/mapsforge/android/maps/rendertheme/Rule;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->empty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 145
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v8}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addSubRule(Lorg/mapsforge/android/maps/rendertheme/Rule;)V

    .line 147
    :cond_1
    iput-object v8, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    .line 148
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    iget-object v11, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 200
    .end local v8    # "rule":Lorg/mapsforge/android/maps/rendertheme/Rule;
    :catch_0
    move-exception v4

    .line 197
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v10, Lorg/xml/sax/SAXException;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 151
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_1
    const-string v10, "area"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 152
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 153
    iget v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->level:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->level:I

    move-object/from16 v0, p4

    invoke-static {p2, v0, v10}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;I)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;

    move-result-object v1

    .line 154
    .local v1, "area":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v1}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 198
    .end local v1    # "area":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;
    :catch_1
    move-exception v4

    .line 199
    .local v4, "e":Ljava/io/IOException;
    new-instance v10, Lorg/xml/sax/SAXException;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 157
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    const-string v10, "caption"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 158
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 159
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;

    move-result-object v2

    .line 160
    .local v2, "caption":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v2}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V

    goto :goto_0

    .line 163
    .end local v2    # "caption":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;
    :cond_4
    const-string v10, "circle"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 164
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 165
    iget v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->level:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->level:I

    move-object/from16 v0, p4

    invoke-static {p2, v0, v10}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;I)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;

    move-result-object v3

    .line 166
    .local v3, "circle":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v3}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V

    goto/16 :goto_0

    .line 169
    .end local v3    # "circle":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;
    :cond_5
    const-string v10, "line"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 170
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 171
    iget v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->level:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->level:I

    move-object/from16 v0, p4

    invoke-static {p2, v0, v10}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;I)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;

    move-result-object v5

    .line 172
    .local v5, "line":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v5}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V

    goto/16 :goto_0

    .line 175
    .end local v5    # "line":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;
    :cond_6
    const-string v10, "lineSymbol"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 176
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 177
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;

    move-result-object v6

    .line 178
    .local v6, "lineSymbol":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v6}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V

    goto/16 :goto_0

    .line 181
    .end local v6    # "lineSymbol":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;
    :cond_7
    const-string v10, "pathText"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 182
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 183
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;

    move-result-object v7

    .line 184
    .local v7, "pathText":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v7}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V

    goto/16 :goto_0

    .line 187
    .end local v7    # "pathText":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;
    :cond_8
    const-string v10, "symbol"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 188
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;

    invoke-direct {p0, p2, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler$Element;)V

    .line 189
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Symbol;->create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Symbol;

    move-result-object v9

    .line 190
    .local v9, "symbol":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Symbol;
    iget-object v10, p0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->currentRule:Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v10, v9}, Lorg/mapsforge/android/maps/rendertheme/Rule;->addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V

    goto/16 :goto_0

    .line 194
    .end local v9    # "symbol":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Symbol;
    :cond_9
    new-instance v10, Lorg/xml/sax/SAXException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "unknown element: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 205
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method
