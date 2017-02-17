.class public Lnet/veritran/android/implementation/AndroidXMLSAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AndroidXMLSAXHandler.java"


# instance fields
.field public final CONFIGURATION_PARAMETERS:I

.field listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->CONFIGURATION_PARAMETERS:I

    .line 39
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->characters([CII)V

    .line 86
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endDocument()V

    .line 58
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setListener(Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;)V
    .locals 0
    .param p1, "i"    # Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    .prologue
    .line 42
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    .line 43
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 48
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startDocument()V

    .line 51
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 64
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->listener:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    :cond_0
    return-void
.end method
