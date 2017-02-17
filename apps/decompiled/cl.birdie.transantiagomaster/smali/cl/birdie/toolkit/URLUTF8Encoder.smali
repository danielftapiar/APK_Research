.class public final Lcl/birdie/toolkit/URLUTF8Encoder;
.super Ljava/lang/Object;
.source "URLUTF8Encoder.java"


# static fields
.field static final hex:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    const-string v2, "%00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "%05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "%07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 31
    const-string v2, "%08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "%09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%0a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "%0b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "%0c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "%0d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "%0e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "%0f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 32
    const-string v2, "%10"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "%11"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "%12"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "%13"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "%14"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "%15"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "%16"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "%17"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 33
    const-string v2, "%18"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "%19"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "%1a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "%1b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "%1c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "%1d"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "%1e"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "%1f"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 34
    const-string v2, "%20"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "%21"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "%22"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "%23"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "%24"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "%25"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "%26"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "%27"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 35
    const-string v2, "%28"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "%29"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "%2a"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "%2b"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "%2c"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "%2d"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "%2e"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "%2f"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 36
    const-string v2, "%30"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "%31"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "%32"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "%33"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "%34"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "%35"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "%36"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "%37"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 37
    const-string v2, "%38"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "%39"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "%3a"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "%3b"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "%3c"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "%3d"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "%3e"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "%3f"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 38
    const-string v2, "%40"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "%41"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "%42"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "%43"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "%44"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "%45"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "%46"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "%47"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 39
    const-string v2, "%48"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "%49"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "%4a"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "%4b"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "%4c"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "%4d"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "%4e"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "%4f"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 40
    const-string v2, "%50"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "%51"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "%52"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "%53"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "%54"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "%55"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "%56"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "%57"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 41
    const-string v2, "%58"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "%59"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "%5a"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "%5b"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "%5c"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "%5d"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "%5e"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "%5f"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 42
    const-string v2, "%60"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "%61"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "%62"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "%63"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "%64"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "%65"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "%66"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "%67"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 43
    const-string v2, "%68"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "%69"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "%6a"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "%6b"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "%6c"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "%6d"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "%6e"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "%6f"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 44
    const-string v2, "%70"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "%71"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "%72"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "%73"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "%74"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "%75"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "%76"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "%77"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 45
    const-string v2, "%78"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "%79"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "%7a"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "%7b"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "%7c"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "%7d"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "%7e"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "%7f"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 46
    const-string v2, "%80"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "%81"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "%82"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "%83"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "%84"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "%85"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "%86"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "%87"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 47
    const-string v2, "%88"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "%89"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "%8a"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "%8b"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "%8c"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "%8d"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "%8e"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "%8f"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 48
    const-string v2, "%90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "%91"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "%92"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "%93"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "%94"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "%95"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "%96"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "%97"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 49
    const-string v2, "%98"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "%99"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "%9a"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "%9b"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "%9c"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "%9d"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "%9e"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "%9f"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 50
    const-string v2, "%a0"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "%a1"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "%a2"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "%a3"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "%a4"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "%a5"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "%a6"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "%a7"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    .line 51
    const-string v2, "%a8"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "%a9"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "%aa"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "%ab"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "%ac"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "%ad"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "%ae"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "%af"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 52
    const-string v2, "%b0"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "%b1"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "%b2"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "%b3"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "%b4"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "%b5"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "%b6"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "%b7"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 53
    const-string v2, "%b8"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "%b9"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "%ba"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "%bb"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "%bc"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "%bd"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "%be"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "%bf"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    .line 54
    const-string v2, "%c0"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "%c1"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "%c2"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "%c3"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "%c4"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "%c5"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "%c6"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "%c7"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 55
    const-string v2, "%c8"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "%c9"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "%ca"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "%cb"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "%cc"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "%cd"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "%ce"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "%cf"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    .line 56
    const-string v2, "%d0"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "%d1"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "%d2"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "%d3"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "%d4"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "%d5"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "%d6"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "%d7"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    .line 57
    const-string v2, "%d8"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "%d9"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "%da"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "%db"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "%dc"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "%dd"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "%de"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "%df"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    .line 58
    const-string v2, "%e0"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "%e1"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "%e2"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "%e3"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "%e4"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "%e5"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "%e6"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "%e7"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    .line 59
    const-string v2, "%e8"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "%e9"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "%ea"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "%eb"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "%ec"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "%ed"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "%ee"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "%ef"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    .line 60
    const-string v2, "%f0"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "%f1"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "%f2"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "%f3"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "%f4"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "%f5"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "%f6"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "%f7"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    .line 61
    const-string v2, "%f8"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "%f9"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "%fa"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "%fb"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "%fc"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "%fd"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "%fe"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "%ff"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lcl/birdie/toolkit/URLUTF8Encoder;->hex:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 94
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 95
    .local v0, "ch":I
    const/16 v4, 0x41

    if-gt v4, v0, :cond_1

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_1

    .line 96
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const/16 v4, 0x61

    if-gt v4, v0, :cond_2

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_2

    .line 98
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 99
    :cond_2
    const/16 v4, 0x30

    if-gt v4, v0, :cond_3

    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    .line 100
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 101
    :cond_3
    const/16 v4, 0x20

    if-ne v0, v4, :cond_4

    .line 102
    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 103
    :cond_4
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_5

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_5

    .line 104
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_5

    const/16 v4, 0x21

    if-eq v0, v4, :cond_5

    .line 105
    const/16 v4, 0x7e

    if-eq v0, v4, :cond_5

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_5

    .line 106
    const/16 v4, 0x27

    if-eq v0, v4, :cond_5

    const/16 v4, 0x28

    if-eq v0, v4, :cond_5

    .line 107
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 108
    :cond_5
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 109
    :cond_6
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_7

    .line 110
    sget-object v4, Lcl/birdie/toolkit/URLUTF8Encoder;->hex:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_7
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_8

    .line 112
    sget-object v4, Lcl/birdie/toolkit/URLUTF8Encoder;->hex:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    sget-object v4, Lcl/birdie/toolkit/URLUTF8Encoder;->hex:[Ljava/lang/String;

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :cond_8
    sget-object v4, Lcl/birdie/toolkit/URLUTF8Encoder;->hex:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    sget-object v4, Lcl/birdie/toolkit/URLUTF8Encoder;->hex:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    sget-object v4, Lcl/birdie/toolkit/URLUTF8Encoder;->hex:[Ljava/lang/String;

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method
