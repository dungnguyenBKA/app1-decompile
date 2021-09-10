.class public Lcom/caverock/androidsvg/f;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/f$a;,
        Lcom/caverock/androidsvg/f$b;
    }
.end annotation


# static fields
.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/c$o;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/c$d0$b;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/b$a;",
            ">;"
        }
    .end annotation
.end field

.field protected static o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic p:[I


# instance fields
.field private a:Lcom/caverock/androidsvg/c;

.field private b:Lcom/caverock/androidsvg/c$i0;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/StringBuilder;

.field private h:Z

.field private i:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/f;->m:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    .line 7
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xf0f8ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aliceblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xfaebd7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "antiquewhite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aqua"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x7fffd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "aquamarine"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xf0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "azure"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xf5f5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "beige"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xffe4c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bisque"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "black"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xffebcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blanchedalmond"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x8a2be2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blueviolet"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xa52a2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "brown"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xdeb887

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "burlywood"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x5f9ea0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cadetblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x7fff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chartreuse"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xd2691e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chocolate"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xff7f50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "coral"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x6495ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cornflowerblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xfff8dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cornsilk"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xdc143c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "crimson"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v2, "cyan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x8b8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkcyan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xb8860b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgoldenrod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xa9a9a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/16 v2, 0x6400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "darkgreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v2, "darkgrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xbdb76b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkkhaki"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x8b008b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkmagenta"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x556b2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkolivegreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xff8c00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkorange"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x9932cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkorchid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/high16 v1, 0x8b0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkred"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xe9967a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darksalmon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x8fbc8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkseagreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x483d8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkslateblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x2f4f4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkslategray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v2, "darkslategrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xced1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkturquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x9400d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkviolet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xff1493

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deeppink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xbfff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deepskyblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x696969

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dimgray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v2, "dimgrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x1e90ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dodgerblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xb22222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "firebrick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xfffaf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "floralwhite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x228b22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "forestgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xff00ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fuchsia"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xdcdcdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gainsboro"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xf8f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ghostwhite"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xffd700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gold"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xdaa520

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "goldenrod"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "green"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v3, 0xadff2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "greenyellow"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v3, "grey"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xf0fff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "honeydew"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xff69b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hotpink"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xcd5c5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "indianred"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x4b0082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "indigo"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xfffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ivory"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xf0e68c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "khaki"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xe6e6fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lavender"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xfff0f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lavenderblush"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x7cfc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lawngreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xfffacd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lemonchiffon"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xadd8e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xf08080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightcoral"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xe0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightcyan"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xfafad2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightgoldenrodyellow"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightgray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v3, 0x90ee90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lightgreen"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v3, "lightgrey"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xffb6c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightpink"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xffa07a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightsalmon"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x20b2aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightseagreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x87cefa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightskyblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightslategray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v3, "lightslategrey"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xb0c4de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightsteelblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xffffe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightyellow"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lime"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0x32cd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "limegreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v2, 0xfaf0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "linen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v2, "magenta"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maroon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x66cdaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumaquamarine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xba55d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumorchid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x9370db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumpurple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x3cb371

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumseagreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x7b68ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumslateblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xfa9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumspringgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x48d1cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumturquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xc71585

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumvioletred"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x191970

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "midnightblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xf5fffa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mintcream"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffe4e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mistyrose"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffe4b5    # 2.3500096E-38f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moccasin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffdead

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navajowhite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xfdf5e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oldlace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x808000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "olive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x6b8e23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "olivedrab"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffa500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orange"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xff4500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orangered"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xda70d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orchid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xeee8aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "palegoldenrod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x98fb98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "palegreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xafeeee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paleturquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xdb7093

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "palevioletred"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffefd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "papayawhip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffdab9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "peachpuff"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xcd853f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "peru"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffc0cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xdda0dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xb0e0e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "powderblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x800080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "purple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const/high16 v1, 0xff0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "red"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xbc8f8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rosybrown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x4169e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "royalblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x8b4513

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "saddlebrown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xfa8072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "salmon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xf4a460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sandybrown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x2e8b57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seagreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xfff5ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seashell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xa0522d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sienna"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xc0c0c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "silver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x87ceeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "skyblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x6a5acd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slateblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x708090

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slategray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const-string v2, "slategrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xfffafa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "snow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xff7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "springgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x4682b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "steelblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xd2b48c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x8080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "teal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xd8bfd8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thistle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xff6347

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tomato"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x40e0d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "turquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xee82ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "violet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xf5deb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wheat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xf5f5f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "whitesmoke"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0xffff00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yellow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    const v1, 0x9acd32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yellowgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    sget-object v2, Lcom/caverock/androidsvg/c$c1;->h:Lcom/caverock/androidsvg/c$c1;

    const v3, 0x3f31a9fc    # 0.694f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v3, "xx-small"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    const v3, 0x3f553f7d    # 0.833f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v3, "x-small"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v3, "small"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v3, "medium"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    const v3, 0x41666666    # 14.4f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v3, "large"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    const v3, 0x418a6666    # 17.3f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v3, "x-large"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    const v3, 0x41a5999a    # 20.7f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v2, "xx-large"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    sget-object v2, Lcom/caverock/androidsvg/c$c1;->j:Lcom/caverock/androidsvg/c$c1;

    const v3, 0x42a6a8f6    # 83.33f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v3, "smaller"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/c$o;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    const-string v2, "larger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bold"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bolder"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "lighter"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "100"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "200"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "300"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const-string v4, "400"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "500"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "600"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const-string v1, "700"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "800"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "900"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/caverock/androidsvg/f;->m:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/c$d0$b;->b:Lcom/caverock/androidsvg/c$d0$b;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/caverock/androidsvg/f;->m:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/c$d0$b;->c:Lcom/caverock/androidsvg/c$d0$b;

    const-string v2, "italic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/caverock/androidsvg/f;->m:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/c$d0$b;->d:Lcom/caverock/androidsvg/c$d0$b;

    const-string v2, "oblique"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->b:Lcom/caverock/androidsvg/b$a;

    const-string v2, "none"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->c:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMinYMin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->d:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMidYMin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->e:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMaxYMin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->f:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMinYMid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->g:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMidYMid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->h:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMaxYMid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->i:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMinYMax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->j:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMidYMax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->k:Lcom/caverock/androidsvg/b$a;

    const-string v2, "xMaxYMax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Structure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "BasicStructure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "ConditionalProcessing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "ViewportAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Shape"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "BasicText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "PaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "BasicPaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "OpacityAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "BasicGraphicsAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Gradient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "BasicClip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "Mask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    const-string v1, "View"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    .line 3
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/caverock/androidsvg/f;->c:Z

    .line 5
    iput-boolean v1, p0, Lcom/caverock/androidsvg/f;->e:Z

    .line 6
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->f:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->g:Ljava/lang/StringBuilder;

    .line 8
    iput-boolean v1, p0, Lcom/caverock/androidsvg/f;->h:Z

    .line 9
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    return-void
.end method

.method private A(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 13

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    new-instance v1, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 4
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    goto :goto_4

    .line 6
    :cond_1
    iget v2, v1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 7
    iget-object v5, v1, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    const/16 v6, 0x61

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7a

    if-le v5, v6, :cond_3

    :cond_2
    const/16 v6, 0x41

    if-lt v5, v6, :cond_4

    const/16 v6, 0x5a

    if-le v5, v6, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->a()I

    move-result v5

    goto :goto_1

    .line 9
    :cond_4
    :goto_2
    iget v6, v1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 10
    :goto_3
    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/f$b;->g(I)Z

    move-result v7

    if-nez v7, :cond_18

    const/16 v7, 0x28

    if-ne v5, v7, :cond_5

    .line 11
    iget v3, v1, Lcom/caverock/androidsvg/f$b;->b:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 12
    iget-object v3, v1, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 13
    :cond_5
    iput v2, v1, Lcom/caverock/androidsvg/f$b;->b:I

    :goto_4
    if-eqz v3, :cond_17

    const-string v2, "matrix"

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x29

    const-string v7, "Invalid transform list: "

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 16
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 18
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v3

    .line 19
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 20
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v8

    .line 21
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 22
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v9

    .line 23
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 24
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v10

    .line 25
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 26
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v11

    .line 27
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v11, :cond_6

    .line 28
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 29
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/16 v7, 0x9

    new-array v7, v7, [F

    const/4 v12, 0x0

    .line 30
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v7, v12

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v7, v4

    const/4 v2, 0x2

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v7, v2

    const/4 v2, 0x3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x4

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x5

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x6

    aput v5, v7, v2

    const/4 v2, 0x7

    aput v5, v7, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 31
    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_5

    .line 32
    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-static {v7, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v2, "translate"

    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 34
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 35
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->o()Ljava/lang/Float;

    move-result-object v3

    .line 37
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v2, :cond_9

    .line 38
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v3, :cond_8

    .line 39
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_5

    .line 40
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_5

    .line 41
    :cond_9
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-static {v7, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v2, "scale"

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 43
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 44
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v2

    .line 45
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->o()Ljava/lang/Float;

    move-result-object v3

    .line 46
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v2, :cond_c

    .line 47
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v3, :cond_b

    .line 48
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_5

    .line 49
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_5

    .line 50
    :cond_c
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-static {v7, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v2, "rotate"

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 52
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 53
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v2

    .line 54
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->o()Ljava/lang/Float;

    move-result-object v3

    .line 55
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->o()Ljava/lang/Float;

    move-result-object v4

    .line 56
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v2, :cond_10

    .line 57
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v3, :cond_e

    .line 58
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_5

    :cond_e
    if-eqz v4, :cond_f

    .line 59
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_5

    .line 60
    :cond_f
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-static {v7, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_10
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-static {v7, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v2, "skewX"

    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 63
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 64
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v2

    .line 65
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v2, :cond_12

    .line 66
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 67
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto :goto_5

    .line 68
    :cond_12
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-static {v7, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const-string v2, "skewY"

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 70
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 71
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v2

    .line 72
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v2, :cond_15

    .line 73
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 74
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 75
    :goto_5
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_6
    return-object v0

    .line 76
    :cond_14
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->p()Z

    goto/16 :goto_0

    .line 77
    :cond_15
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-static {v7, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_16
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid transform list fn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_17
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Bad transform function encountered in transform list: "

    invoke-static {v1, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_18
    invoke-virtual {v1}, Lcom/caverock/androidsvg/f$b;->a()I

    move-result v5

    goto/16 :goto_3
.end method

.method private B(Lorg/xml/sax/Attributes;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_a

    .line 2
    new-instance v0, Lcom/caverock/androidsvg/c$x;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c$x;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->m(Lcom/caverock/androidsvg/c$q0;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 11
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    return-void

    .line 12
    :cond_0
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_6

    const-string v4, "userSpaceOnUse"

    const-string v5, "objectBoundingBox"

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 14
    :pswitch_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->p:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 16
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->p:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 18
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid value for attribute patternUnits"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/f;->A(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->r:Landroid/graphics/Matrix;

    goto :goto_1

    .line 20
    :pswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->q:Ljava/lang/Boolean;

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->q:Ljava/lang/Boolean;

    goto :goto_1

    .line 24
    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid value for attribute patternContentUnits"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :pswitch_3
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->t:Lcom/caverock/androidsvg/c$o;

    goto :goto_1

    .line 26
    :pswitch_4
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->s:Lcom/caverock/androidsvg/c$o;

    goto :goto_1

    .line 27
    :pswitch_5
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->u:Lcom/caverock/androidsvg/c$o;

    .line 28
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 29
    :cond_5
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_6
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/1999/xlink"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 31
    :cond_7
    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->w:Ljava/lang/String;

    goto :goto_1

    .line 32
    :cond_8
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$x;->v:Lcom/caverock/androidsvg/c$o;

    .line 33
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 34
    :cond_9
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_a
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected static C(Lcom/caverock/androidsvg/c$d0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "inherit"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v0

    invoke-static {p1}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const-string v2, "auto"

    const/16 v3, 0x29

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v0, v1, :cond_41

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    if-eq v0, v4, :cond_3f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x24

    if-eq v0, v1, :cond_3a

    if-eq v0, v3, :cond_39

    const/16 v1, 0x2b

    const-string v3, "visible"

    if-eq v0, v1, :cond_34

    const/16 v1, 0x4f

    const-string v2, "none"

    if-eq v0, v1, :cond_31

    const/16 v1, 0x3b

    const-string v4, "currentColor"

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_24

    const/4 v1, -0x1

    const/16 v6, 0x7c

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string p1, "round"

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_15

    .line 4
    :pswitch_0
    sget-object p1, Lcom/caverock/androidsvg/f;->m:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/c$d0$b;

    if-eqz p1, :cond_2

    .line 5
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->s:Lcom/caverock/androidsvg/c$d0$b;

    .line 6
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x10000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 7
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font-style property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_1
    sget-object p1, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 9
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    .line 10
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x8000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 11
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font-weight property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_2
    sget-object p1, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/c$o;

    if-nez p1, :cond_4

    .line 13
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object p1

    .line 14
    :cond_4
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->q:Lcom/caverock/androidsvg/c$o;

    .line 15
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 16
    :pswitch_3
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->p:Ljava/util/List;

    .line 17
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 18
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "|caption|icon|menu|message-box|small-caption|status-bar|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_5

    goto/16 :goto_15

    .line 19
    :cond_5
    new-instance p1, Lcom/caverock/androidsvg/f$b;

    invoke-direct {p1, p2}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    move-object p2, v5

    move-object v0, p2

    move-object v1, v0

    :goto_0
    const/16 v2, 0x2f

    .line 20
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/f$b;->m(C)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v3, :cond_11

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v4, "normal"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    :cond_7
    if-nez p2, :cond_8

    .line 23
    sget-object p2, Lcom/caverock/androidsvg/f;->l:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    .line 24
    sget-object v0, Lcom/caverock/androidsvg/f;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$d0$b;

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    if-nez v1, :cond_a

    const-string v1, "small-caps"

    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v3

    goto :goto_0

    .line 26
    :cond_a
    :goto_1
    sget-object v1, Lcom/caverock/androidsvg/f;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/c$o;

    if-nez v1, :cond_b

    .line 27
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v1

    .line 28
    :cond_b
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 29
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 30
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 31
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    .line 32
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_2

    .line 33
    :cond_c
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font style attribute: missing line-height"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_d
    :goto_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3

    .line 35
    :cond_e
    iget v2, p1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 36
    iget-object v3, p1, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 37
    iget-object p1, p1, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 38
    :goto_3
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->p:Ljava/util/List;

    .line 40
    iput-object v1, p0, Lcom/caverock/androidsvg/c$d0;->q:Lcom/caverock/androidsvg/c$o;

    if-nez p2, :cond_f

    const/16 p1, 0x190

    goto :goto_4

    .line 41
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    if-nez v0, :cond_10

    .line 42
    sget-object v0, Lcom/caverock/androidsvg/c$d0$b;->b:Lcom/caverock/androidsvg/c$d0$b;

    :cond_10
    iput-object v0, p0, Lcom/caverock/androidsvg/c$d0;->s:Lcom/caverock/androidsvg/c$d0$b;

    .line 43
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x1e000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 44
    :cond_11
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font style attribute: missing font size and family"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :pswitch_5
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->x(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->e:Ljava/lang/Float;

    .line 46
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 47
    :pswitch_6
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->q(Ljava/lang/String;)Lcom/caverock/androidsvg/c$d0$a;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->d:Lcom/caverock/androidsvg/c$d0$a;

    .line 48
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    :pswitch_7
    const-string p1, "fill"

    .line 49
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/c$n0;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    .line 50
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 51
    :pswitch_8
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_12

    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->B:Ljava/lang/Boolean;

    .line 53
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x1000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 54
    :cond_12
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for \"display\" attribute: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :pswitch_9
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    .line 56
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x800000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 57
    :pswitch_a
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    .line 58
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x400000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 59
    :pswitch_b
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    .line 60
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x200000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 61
    :pswitch_c
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    .line 64
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0xe00000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 65
    :pswitch_d
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->h:Lcom/caverock/androidsvg/c$o;

    .line 66
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 67
    :pswitch_e
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->x(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->g:Ljava/lang/Float;

    .line 68
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 69
    :pswitch_f
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->r(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->k:Ljava/lang/Float;

    .line 70
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    :pswitch_10
    const-string v0, "miter"

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    sget-object p1, Lcom/caverock/androidsvg/c$d0$d;->b:Lcom/caverock/androidsvg/c$d0$d;

    goto :goto_5

    .line 73
    :cond_13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 74
    sget-object p1, Lcom/caverock/androidsvg/c$d0$d;->c:Lcom/caverock/androidsvg/c$d0$d;

    goto :goto_5

    :cond_14
    const-string p1, "bevel"

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 76
    sget-object p1, Lcom/caverock/androidsvg/c$d0$d;->d:Lcom/caverock/androidsvg/c$d0$d;

    .line 77
    :goto_5
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->j:Lcom/caverock/androidsvg/c$d0$d;

    .line 78
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 79
    :cond_15
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid stroke-linejoin property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_11
    const-string v0, "butt"

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 81
    sget-object p1, Lcom/caverock/androidsvg/c$d0$c;->b:Lcom/caverock/androidsvg/c$d0$c;

    goto :goto_6

    .line 82
    :cond_16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 83
    sget-object p1, Lcom/caverock/androidsvg/c$d0$c;->c:Lcom/caverock/androidsvg/c$d0$c;

    goto :goto_6

    :cond_17
    const-string p1, "square"

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 85
    sget-object p1, Lcom/caverock/androidsvg/c$d0$c;->d:Lcom/caverock/androidsvg/c$d0$c;

    .line 86
    :goto_6
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->i:Lcom/caverock/androidsvg/c$d0$c;

    .line 87
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 88
    :cond_18
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid stroke-linecap property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :pswitch_12
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->m:Lcom/caverock/androidsvg/c$o;

    .line 90
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 91
    :pswitch_13
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 92
    iput-object v5, p0, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    goto :goto_9

    .line 93
    :cond_19
    new-instance p1, Lcom/caverock/androidsvg/f$b;

    invoke-direct {p1, p2}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 95
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_8

    .line 96
    :cond_1a
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->j()Lcom/caverock/androidsvg/c$o;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_8

    .line 97
    :cond_1b
    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v1

    const-string v2, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    if-nez v1, :cond_20

    .line 98
    iget v1, v0, Lcom/caverock/androidsvg/c$o;->b:F

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_7
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1c

    goto :goto_8

    .line 102
    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Lcom/caverock/androidsvg/c$o;

    .line 103
    :goto_8
    iput-object v5, p0, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    .line 104
    :goto_9
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 105
    :cond_1d
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 106
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->j()Lcom/caverock/androidsvg/c$o;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 107
    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 108
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget v0, v0, Lcom/caverock/androidsvg/c$o;->b:F

    add-float/2addr v1, v0

    goto :goto_7

    .line 110
    :cond_1e
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-static {v2, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_1f
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid stroke-dasharray. Non-Length content found: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_20
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-static {v2, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_14
    const-string p1, "stroke"

    .line 113
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/c$n0;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    .line 114
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 115
    :pswitch_15
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->x(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->E:Ljava/lang/Float;

    .line 116
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x8000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 117
    :pswitch_16
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 118
    invoke-static {}, Lcom/caverock/androidsvg/c$f;->a()Lcom/caverock/androidsvg/c$f;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    goto :goto_a

    .line 119
    :cond_21
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->n(Ljava/lang/String;)Lcom/caverock/androidsvg/c$e;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    .line 120
    :goto_a
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x4000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 121
    :pswitch_17
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "|visible|hidden|collapse|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_22

    .line 122
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->C:Ljava/lang/Boolean;

    .line 123
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x2000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 124
    :cond_22
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for \"visibility\" attribute: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :pswitch_18
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->x(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->L:Ljava/lang/Float;

    .line 126
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide v0, 0x400000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 127
    :pswitch_19
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 128
    invoke-static {}, Lcom/caverock/androidsvg/c$f;->a()Lcom/caverock/androidsvg/c$f;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->K:Lcom/caverock/androidsvg/c$n0;

    goto :goto_b

    .line 129
    :cond_23
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->n(Ljava/lang/String;)Lcom/caverock/androidsvg/c$e;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->K:Lcom/caverock/androidsvg/c$n0;

    .line 130
    :goto_b
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide v0, 0x200000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 131
    :cond_24
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 132
    sget-object p1, Lcom/caverock/androidsvg/c$d0$f;->b:Lcom/caverock/androidsvg/c$d0$f;

    goto :goto_c

    :cond_25
    const-string p1, "underline"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 134
    sget-object p1, Lcom/caverock/androidsvg/c$d0$f;->c:Lcom/caverock/androidsvg/c$d0$f;

    goto :goto_c

    :cond_26
    const-string p1, "overline"

    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 136
    sget-object p1, Lcom/caverock/androidsvg/c$d0$f;->d:Lcom/caverock/androidsvg/c$d0$f;

    goto :goto_c

    :cond_27
    const-string p1, "line-through"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 138
    sget-object p1, Lcom/caverock/androidsvg/c$d0$f;->e:Lcom/caverock/androidsvg/c$d0$f;

    goto :goto_c

    :cond_28
    const-string p1, "blink"

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 140
    sget-object p1, Lcom/caverock/androidsvg/c$d0$f;->f:Lcom/caverock/androidsvg/c$d0$f;

    .line 141
    :goto_c
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    .line 142
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x20000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 143
    :cond_29
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid text-decoration property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    const-string p1, "start"

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 145
    sget-object p1, Lcom/caverock/androidsvg/c$d0$e;->b:Lcom/caverock/androidsvg/c$d0$e;

    goto :goto_d

    :cond_2b
    const-string p1, "middle"

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 147
    sget-object p1, Lcom/caverock/androidsvg/c$d0$e;->c:Lcom/caverock/androidsvg/c$d0$e;

    goto :goto_d

    :cond_2c
    const-string p1, "end"

    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 149
    sget-object p1, Lcom/caverock/androidsvg/c$d0$e;->d:Lcom/caverock/androidsvg/c$d0$e;

    .line 150
    :goto_d
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    .line 151
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x40000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 152
    :cond_2d
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid text-anchor property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_2e
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->x(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->J:Ljava/lang/Float;

    .line 154
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide v0, 0x100000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 155
    :cond_2f
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 156
    invoke-static {}, Lcom/caverock/androidsvg/c$f;->a()Lcom/caverock/androidsvg/c$f;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->I:Lcom/caverock/androidsvg/c$n0;

    goto :goto_e

    .line 157
    :cond_30
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->n(Ljava/lang/String;)Lcom/caverock/androidsvg/c$e;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->I:Lcom/caverock/androidsvg/c$n0;

    .line 158
    :goto_e
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide v0, 0x80000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 159
    :cond_31
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 160
    sget-object p1, Lcom/caverock/androidsvg/c$d0$h;->b:Lcom/caverock/androidsvg/c$d0$h;

    goto :goto_f

    :cond_32
    const-string p1, "non-scaling-stroke"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 162
    sget-object p1, Lcom/caverock/androidsvg/c$d0$h;->c:Lcom/caverock/androidsvg/c$d0$h;

    .line 163
    :goto_f
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->M:Lcom/caverock/androidsvg/c$d0$h;

    .line 164
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide v0, 0x800000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 165
    :cond_33
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid vector-effect property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_34
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_11

    :cond_35
    const-string p1, "hidden"

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    const-string p1, "scroll"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_10

    .line 168
    :cond_36
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid toverflow property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_37
    :goto_10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 170
    :cond_38
    :goto_11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    :goto_12
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    .line 172
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 173
    :cond_39
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->x(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    .line 174
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 175
    :cond_3a
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    .line 176
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x40000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    :cond_3b
    const-string p1, "ltr"

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 178
    sget-object p1, Lcom/caverock/androidsvg/c$d0$g;->b:Lcom/caverock/androidsvg/c$d0$g;

    goto :goto_13

    :cond_3c
    const-string p1, "rtl"

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 180
    sget-object p1, Lcom/caverock/androidsvg/c$d0$g;->c:Lcom/caverock/androidsvg/c$d0$g;

    .line 181
    :goto_13
    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->u:Lcom/caverock/androidsvg/c$d0$g;

    .line 182
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide v0, 0x1000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto/16 :goto_15

    .line 183
    :cond_3d
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid direction property: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_3e
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->n(Ljava/lang/String;)Lcom/caverock/androidsvg/c$e;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->o:Lcom/caverock/androidsvg/c$e;

    .line 185
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto :goto_15

    .line 186
    :cond_3f
    invoke-static {p2}, Lcom/caverock/androidsvg/f;->q(Ljava/lang/String;)Lcom/caverock/androidsvg/c$d0$a;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->G:Lcom/caverock/androidsvg/c$d0$a;

    .line 187
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x20000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto :goto_15

    .line 188
    :cond_40
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/f;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/c$d0;->F:Ljava/lang/String;

    .line 189
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x10000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    goto :goto_15

    .line 190
    :cond_41
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_14

    .line 191
    :cond_42
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rect("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 192
    new-instance p1, Lcom/caverock/androidsvg/f$b;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 194
    invoke-static {p1}, Lcom/caverock/androidsvg/f;->w(Lcom/caverock/androidsvg/f$b;)Lcom/caverock/androidsvg/c$o;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 196
    invoke-static {p1}, Lcom/caverock/androidsvg/f;->w(Lcom/caverock/androidsvg/f$b;)Lcom/caverock/androidsvg/c$o;

    move-result-object v1

    .line 197
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 198
    invoke-static {p1}, Lcom/caverock/androidsvg/f;->w(Lcom/caverock/androidsvg/f$b;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    .line 199
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 200
    invoke-static {p1}, Lcom/caverock/androidsvg/f;->w(Lcom/caverock/androidsvg/f$b;)Lcom/caverock/androidsvg/c$o;

    move-result-object v4

    .line 201
    invoke-virtual {p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 202
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 203
    new-instance v5, Lcom/caverock/androidsvg/c$b;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/caverock/androidsvg/c$b;-><init>(Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$o;)V

    .line 204
    :goto_14
    iput-object v5, p0, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    .line 205
    iget-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    :goto_15
    return-void

    .line 206
    :cond_43
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Bad rect() clip definition: "

    invoke-static {p1, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_44
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid clip attribute shape. Only rect() is supported."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw p0

    :goto_17
    goto :goto_16

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x59
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method private D(Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/caverock/androidsvg/c$b0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$b0;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 4
    iput-object v0, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 5
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 7
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 8
    iput-object v1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private E(Lorg/xml/sax/Attributes;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_8

    .line 2
    instance-of v1, v0, Lcom/caverock/androidsvg/c$i;

    if-eqz v1, :cond_7

    .line 3
    new-instance v1, Lcom/caverock/androidsvg/c$c0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$c0;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 5
    iput-object v0, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 7
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 9
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 10
    iput-object v1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    return-void

    .line 11
    :cond_0
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x28

    if-eq v4, v5, :cond_1

    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x25

    if-ne v5, v7, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 16
    :goto_1
    :try_start_0
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v6, :cond_3

    div-float/2addr v4, v5

    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    cmpl-float v6, v4, v5

    if-lez v6, :cond_5

    goto :goto_2

    :cond_5
    move v5, v4

    .line 17
    :goto_2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iput-object v3, v1, Lcom/caverock/androidsvg/c$c0;->h:Ljava/lang/Float;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid offset value in <stop>: "

    invoke-static {v1, v3}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 20
    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid offset value in <stop> (empty string)"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements."

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_8
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private F(Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "all"

    const/4 v3, 0x1

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_1

    if-eqz v3, :cond_0

    .line 3
    sget-object p1, Lcom/caverock/androidsvg/a$e;->i:Lcom/caverock/androidsvg/a$e;

    invoke-static {v2, p1}, Lcom/caverock/androidsvg/a;->b(Ljava/lang/String;Lcom/caverock/androidsvg/a$e;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/caverock/androidsvg/f;->h:Z

    goto :goto_1

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/caverock/androidsvg/f;->c:Z

    .line 6
    iput v1, p0, Lcom/caverock/androidsvg/f;->d:I

    :goto_1
    return-void

    .line 7
    :cond_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x27

    if-eq v5, v6, :cond_3

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "text/css"

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private G(Lorg/xml/sax/Attributes;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_5

    .line 2
    new-instance v0, Lcom/caverock/androidsvg/c$y0;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c$y0;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 10
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    .line 11
    iget-object p1, v0, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    instance-of v1, p1, Lcom/caverock/androidsvg/c$a1;

    if-eqz v1, :cond_0

    .line 12
    check-cast p1, Lcom/caverock/androidsvg/c$a1;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/c$y0;->o(Lcom/caverock/androidsvg/c$a1;)V

    goto :goto_1

    .line 13
    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/c$w0;

    invoke-interface {p1}, Lcom/caverock/androidsvg/c$w0;->g()Lcom/caverock/androidsvg/c$a1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/c$y0;->o(Lcom/caverock/androidsvg/c$a1;)V

    :goto_1
    return-void

    .line 14
    :cond_1
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$y0;->o:Lcom/caverock/androidsvg/c$o;

    goto :goto_2

    .line 17
    :cond_3
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/1999/xlink"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    iput-object v2, v0, Lcom/caverock/androidsvg/c$y0;->n:Ljava/lang/String;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_5
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method static synthetic a()[I
    .locals 8

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/f;->p:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/f$a;->values()[Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x5c

    new-array v1, v0, [I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/caverock/androidsvg/f$a;->b:Lcom/caverock/androidsvg/f$a;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v3, 0x5b

    :try_start_1
    sget-object v4, Lcom/caverock/androidsvg/f$a;->O0:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x2

    :try_start_2
    sget-object v4, Lcom/caverock/androidsvg/f$a;->c:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x4

    const/4 v4, 0x3

    :try_start_3
    sget-object v5, Lcom/caverock/androidsvg/f$a;->e:Lcom/caverock/androidsvg/f$a;

    aput v2, v1, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v5, Lcom/caverock/androidsvg/f$a;->d:Lcom/caverock/androidsvg/f$a;

    aput v4, v1, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v0, 0x5

    :try_start_5
    sget-object v4, Lcom/caverock/androidsvg/f$a;->f:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v2, 0x6

    :try_start_6
    sget-object v4, Lcom/caverock/androidsvg/f$a;->g:Lcom/caverock/androidsvg/f$a;

    aput v2, v1, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v0, 0x7

    :try_start_7
    sget-object v4, Lcom/caverock/androidsvg/f$a;->h:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v2, 0x8

    :try_start_8
    sget-object v4, Lcom/caverock/androidsvg/f$a;->i:Lcom/caverock/androidsvg/f$a;

    aput v2, v1, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v0, 0xe

    const/16 v4, 0xd

    :try_start_9
    sget-object v5, Lcom/caverock/androidsvg/f$a;->o:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v5, 0x9

    :try_start_a
    sget-object v6, Lcom/caverock/androidsvg/f$a;->j:Lcom/caverock/androidsvg/f$a;

    aput v5, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v2, 0xf

    :try_start_b
    sget-object v6, Lcom/caverock/androidsvg/f$a;->p:Lcom/caverock/androidsvg/f$a;

    aput v2, v1, v0
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v0, 0xa

    :try_start_c
    sget-object v6, Lcom/caverock/androidsvg/f$a;->k:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v5, 0xb

    :try_start_d
    sget-object v6, Lcom/caverock/androidsvg/f$a;->l:Lcom/caverock/androidsvg/f$a;

    aput v5, v1, v0
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v0, 0x10

    :try_start_e
    sget-object v6, Lcom/caverock/androidsvg/f$a;->q:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v2, 0x12

    const/16 v6, 0x11

    :try_start_f
    sget-object v7, Lcom/caverock/androidsvg/f$a;->s:Lcom/caverock/androidsvg/f$a;

    aput v2, v1, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v7, Lcom/caverock/androidsvg/f$a;->r:Lcom/caverock/androidsvg/f$a;

    aput v6, v1, v0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v0, 0x13

    :try_start_11
    sget-object v6, Lcom/caverock/androidsvg/f$a;->t:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v2, 0x14

    :try_start_12
    sget-object v6, Lcom/caverock/androidsvg/f$a;->u:Lcom/caverock/androidsvg/f$a;

    aput v2, v1, v0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    const/16 v0, 0x15

    :try_start_13
    sget-object v6, Lcom/caverock/androidsvg/f$a;->v:Lcom/caverock/androidsvg/f$a;

    aput v0, v1, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v2, Lcom/caverock/androidsvg/f$a;->x:Lcom/caverock/androidsvg/f$a;

    const/16 v2, 0x16

    const/16 v6, 0x17

    aput v6, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v2, Lcom/caverock/androidsvg/f$a;->w:Lcom/caverock/androidsvg/f$a;

    const/16 v2, 0x16

    aput v2, v1, v0
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/caverock/androidsvg/f$a;->m:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0xc

    aput v0, v1, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/caverock/androidsvg/f$a;->n:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0xc

    aput v4, v1, v0
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/caverock/androidsvg/f$a;->y:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x17

    const/16 v2, 0x18

    aput v2, v1, v0
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/caverock/androidsvg/f$a;->z:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x18

    const/16 v2, 0x19

    aput v2, v1, v0
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/caverock/androidsvg/f$a;->A:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x19

    const/16 v2, 0x1a

    aput v2, v1, v0
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/caverock/androidsvg/f$a;->B:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x1a

    const/16 v2, 0x1b

    aput v2, v1, v0
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/caverock/androidsvg/f$a;->C:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x1b

    const/16 v2, 0x1c

    aput v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/caverock/androidsvg/f$a;->D:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x1c

    const/16 v2, 0x1d

    aput v2, v1, v0
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/caverock/androidsvg/f$a;->H:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x20

    const/16 v2, 0x21

    aput v2, v1, v0
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/caverock/androidsvg/f$a;->I:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x21

    const/16 v2, 0x22

    aput v2, v1, v0
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/caverock/androidsvg/f$a;->J:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x22

    const/16 v2, 0x23

    aput v2, v1, v0
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/caverock/androidsvg/f$a;->G:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x1f

    const/16 v2, 0x20

    aput v2, v1, v0
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/caverock/androidsvg/f$a;->F:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x1e

    const/16 v2, 0x1f

    aput v2, v1, v0
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/caverock/androidsvg/f$a;->E:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x1d

    const/16 v2, 0x1e

    aput v2, v1, v0
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/caverock/androidsvg/f$a;->K:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x23

    const/16 v2, 0x24

    aput v2, v1, v0
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/caverock/androidsvg/f$a;->L:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x24

    const/16 v2, 0x25

    aput v2, v1, v0
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/caverock/androidsvg/f$a;->M:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x25

    const/16 v2, 0x26

    aput v2, v1, v0
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/caverock/androidsvg/f$a;->N:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x26

    const/16 v2, 0x27

    aput v2, v1, v0
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/caverock/androidsvg/f$a;->O:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x27

    const/16 v2, 0x28

    aput v2, v1, v0
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/caverock/androidsvg/f$a;->P:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x28

    const/16 v2, 0x29

    aput v2, v1, v0
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/caverock/androidsvg/f$a;->Q:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x29

    const/16 v2, 0x2a

    aput v2, v1, v0
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/caverock/androidsvg/f$a;->R:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x2a

    const/16 v2, 0x2b

    aput v2, v1, v0
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/caverock/androidsvg/f$a;->S:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x2b

    const/16 v2, 0x2c

    aput v2, v1, v0
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/caverock/androidsvg/f$a;->T:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x2c

    const/16 v2, 0x2d

    aput v2, v1, v0
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/caverock/androidsvg/f$a;->U:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x2d

    const/16 v2, 0x2e

    aput v2, v1, v0
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/caverock/androidsvg/f$a;->V:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x2e

    const/16 v2, 0x2f

    aput v2, v1, v0
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/caverock/androidsvg/f$a;->W:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x2f

    const/16 v2, 0x30

    aput v2, v1, v0
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/caverock/androidsvg/f$a;->X:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x30

    const/16 v2, 0x31

    aput v2, v1, v0
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/caverock/androidsvg/f$a;->Y:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x31

    const/16 v2, 0x32

    aput v2, v1, v0
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/caverock/androidsvg/f$a;->Z:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x32

    const/16 v2, 0x33

    aput v2, v1, v0
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/caverock/androidsvg/f$a;->a0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x33

    const/16 v2, 0x34

    aput v2, v1, v0
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/caverock/androidsvg/f$a;->c0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x35

    const/16 v2, 0x36

    aput v2, v1, v0
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/caverock/androidsvg/f$a;->b0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x34

    const/16 v2, 0x35

    aput v2, v1, v0
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/caverock/androidsvg/f$a;->e0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x37

    const/16 v2, 0x38

    aput v2, v1, v0
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/caverock/androidsvg/f$a;->d0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x36

    const/16 v2, 0x37

    aput v2, v1, v0
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/caverock/androidsvg/f$a;->f0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x38

    const/16 v2, 0x39

    aput v2, v1, v0
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/caverock/androidsvg/f$a;->g0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x39

    const/16 v2, 0x3a

    aput v2, v1, v0
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lcom/caverock/androidsvg/f$a;->h0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x3a

    const/16 v2, 0x3b

    aput v2, v1, v0
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lcom/caverock/androidsvg/f$a;->i0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x3b

    const/16 v2, 0x3c

    aput v2, v1, v0
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lcom/caverock/androidsvg/f$a;->j0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x3c

    const/16 v2, 0x3d

    aput v2, v1, v0
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v0, Lcom/caverock/androidsvg/f$a;->k0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x3d

    const/16 v2, 0x3e

    aput v2, v1, v0
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v0, Lcom/caverock/androidsvg/f$a;->l0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x3e

    const/16 v2, 0x3f

    aput v2, v1, v0
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v0, Lcom/caverock/androidsvg/f$a;->m0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x3f

    const/16 v2, 0x40

    aput v2, v1, v0
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v0, Lcom/caverock/androidsvg/f$a;->n0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x40

    const/16 v2, 0x41

    aput v2, v1, v0
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v0, Lcom/caverock/androidsvg/f$a;->o0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x41

    const/16 v2, 0x42

    aput v2, v1, v0
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v0, Lcom/caverock/androidsvg/f$a;->p0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x42

    const/16 v2, 0x43

    aput v2, v1, v0
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v0, Lcom/caverock/androidsvg/f$a;->q0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x43

    const/16 v2, 0x44

    aput v2, v1, v0
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v0, Lcom/caverock/androidsvg/f$a;->r0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x44

    const/16 v2, 0x45

    aput v2, v1, v0
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v0, Lcom/caverock/androidsvg/f$a;->s0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x45

    const/16 v2, 0x46

    aput v2, v1, v0
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v0, Lcom/caverock/androidsvg/f$a;->t0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x46

    const/16 v2, 0x47

    aput v2, v1, v0
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v0, Lcom/caverock/androidsvg/f$a;->u0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x47

    const/16 v2, 0x48

    aput v2, v1, v0
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v0, Lcom/caverock/androidsvg/f$a;->v0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x48

    const/16 v2, 0x49

    aput v2, v1, v0
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v0, Lcom/caverock/androidsvg/f$a;->w0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x49

    const/16 v2, 0x4a

    aput v2, v1, v0
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v0, Lcom/caverock/androidsvg/f$a;->x0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x4a

    const/16 v2, 0x4b

    aput v2, v1, v0
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v0, Lcom/caverock/androidsvg/f$a;->y0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x4b

    const/16 v2, 0x4c

    aput v2, v1, v0
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v0, Lcom/caverock/androidsvg/f$a;->z0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x4c

    const/16 v2, 0x4d

    aput v2, v1, v0
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v0, Lcom/caverock/androidsvg/f$a;->A0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x4d

    const/16 v2, 0x4e

    aput v2, v1, v0
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v0, Lcom/caverock/androidsvg/f$a;->B0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x4e

    const/16 v2, 0x4f

    aput v2, v1, v0
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v0, Lcom/caverock/androidsvg/f$a;->C0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x4f

    const/16 v2, 0x50

    aput v2, v1, v0
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v0, Lcom/caverock/androidsvg/f$a;->D0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x50

    const/16 v2, 0x51

    aput v2, v1, v0
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v0, Lcom/caverock/androidsvg/f$a;->L0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x58

    const/16 v2, 0x59

    aput v2, v1, v0
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v0, Lcom/caverock/androidsvg/f$a;->M0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x59

    const/16 v2, 0x5a

    aput v2, v1, v0
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v0, Lcom/caverock/androidsvg/f$a;->N0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x5a

    aput v3, v1, v0
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v0, Lcom/caverock/androidsvg/f$a;->E0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x51

    const/16 v2, 0x52

    aput v2, v1, v0
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v0, Lcom/caverock/androidsvg/f$a;->F0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x52

    const/16 v2, 0x53

    aput v2, v1, v0
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v0, Lcom/caverock/androidsvg/f$a;->H0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x54

    const/16 v2, 0x55

    aput v2, v1, v0
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v0, Lcom/caverock/androidsvg/f$a;->J0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x56

    const/16 v2, 0x57

    aput v2, v1, v0
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v0, Lcom/caverock/androidsvg/f$a;->G0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x53

    const/16 v2, 0x54

    aput v2, v1, v0
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v0, Lcom/caverock/androidsvg/f$a;->I0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x55

    const/16 v2, 0x56

    aput v2, v1, v0
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v0, Lcom/caverock/androidsvg/f$a;->K0:Lcom/caverock/androidsvg/f$a;

    const/16 v0, 0x57

    const/16 v2, 0x58

    aput v2, v1, v0
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    sput-object v1, Lcom/caverock/androidsvg/f;->p:[I

    return-object v1
.end method

.method private b(Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/caverock/androidsvg/c$l;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c$l;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 9
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 10
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    return-void

    .line 11
    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lorg/xml/sax/Attributes;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_7

    .line 2
    new-instance v0, Lcom/caverock/androidsvg/c$n;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c$n;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 11
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    return-void

    .line 12
    :cond_0
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 14
    :pswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$n;->q:Lcom/caverock/androidsvg/c$o;

    goto :goto_1

    .line 15
    :pswitch_1
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$n;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_1

    .line 16
    :pswitch_2
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$n;->r:Lcom/caverock/androidsvg/c$o;

    .line 17
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid <use> element. width cannot be negative"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/f;->z(Lcom/caverock/androidsvg/c$o0;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/1999/xlink"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    iput-object v2, v0, Lcom/caverock/androidsvg/c$n;->o:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$n;->s:Lcom/caverock/androidsvg/c$o;

    .line 23
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid <use> element. height cannot be negative"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_7
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v0, :cond_a

    .line 2
    new-instance v0, Lcom/caverock/androidsvg/c$r;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c$r;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 10
    iput-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    return-void

    .line 11
    :cond_0
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x25

    const-string v5, "userSpaceOnUse"

    const-string v6, "objectBoundingBox"

    if-eq v3, v4, :cond_5

    const/16 v4, 0x26

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 13
    :pswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->q:Lcom/caverock/androidsvg/c$o;

    goto :goto_1

    .line 14
    :pswitch_1
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_1

    .line 15
    :pswitch_2
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->r:Lcom/caverock/androidsvg/c$o;

    .line 16
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid <mask> element. width cannot be negative"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->n:Ljava/lang/Boolean;

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->n:Ljava/lang/Boolean;

    goto :goto_1

    .line 22
    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid value for attribute maskUnits"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->o:Ljava/lang/Boolean;

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->o:Ljava/lang/Boolean;

    goto :goto_1

    .line 27
    :cond_7
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid value for attribute maskContentUnits"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_8
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/c$r;->s:Lcom/caverock/androidsvg/c$o;

    .line 29
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 30
    :cond_9
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid <mask> element. height cannot be negative"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_a
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    .line 4
    :pswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/f;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/HashSet;

    if-eqz v2, :cond_1

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 6
    :goto_1
    invoke-interface {p1, v3}, Lcom/caverock/androidsvg/c$f0;->f(Ljava/util/Set;)V

    goto :goto_6

    .line 7
    :pswitch_1
    new-instance v3, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 9
    :goto_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p1, v4}, Lcom/caverock/androidsvg/c$f0;->d(Ljava/util/Set;)V

    goto :goto_6

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->l()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_2

    .line 14
    :pswitch_2
    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/c$f0;->j(Ljava/lang/String;)V

    goto :goto_6

    .line 15
    :pswitch_3
    new-instance v3, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 17
    :goto_3
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/c$f0;->h(Ljava/util/Set;)V

    goto :goto_6

    .line 19
    :cond_3
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->l()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/TR/SVG11/feature#"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x23

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const-string v4, "UNSUPPORTED"

    .line 22
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_4
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_3

    .line 24
    :cond_5
    new-instance v3, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 26
    :goto_5
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 27
    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/c$f0;->l(Ljava/util/Set;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 28
    :cond_6
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->l()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 30
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 31
    :cond_7
    new-instance v5, Ljava/util/Locale;

    const-string v6, ""

    invoke-direct {v5, v4, v6, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v3}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "xml:space"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "default"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$k0;->d:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    const-string v0, "preserve"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$k0;->d:Ljava/lang/Boolean;

    goto :goto_2

    .line 10
    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid value for \"xml:space\" attribute: "

    invoke-static {v0, p2}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_5
    :goto_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/caverock/androidsvg/c$k0;->c:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private h(Lcom/caverock/androidsvg/c$i;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_7

    const/16 v3, 0x19

    if-eq v2, v3, :cond_4

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/c$j;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/c$j;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/c$i;->k:Lcom/caverock/androidsvg/c$j;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid spreadMethod attribute. \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not a valid value."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->l:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "objectBoundingBox"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->i:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    const-string v2, "userSpaceOnUse"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->i:Ljava/lang/Boolean;

    goto :goto_1

    .line 12
    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute gradientUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/f;->A(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->j:Landroid/graphics/Matrix;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private i(Lcom/caverock/androidsvg/c$y;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/f$a;->W:Lcom/caverock/androidsvg/f$a;

    if-ne v2, v3, :cond_5

    .line 3
    new-instance v2, Lcom/caverock/androidsvg/f$b;

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 6
    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p1, Lcom/caverock/androidsvg/c$y;->o:[F

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 9
    iget-object v5, p1, Lcom/caverock/androidsvg/c$y;->o:[F

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, v2

    move v2, v6

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v4

    const-string v5, "Invalid <"

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 12
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 14
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/16 v3, 0x49

    if-eq v2, v3, :cond_3

    .line 5
    iget-object v1, p1, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$d0;-><init>()V

    iput-object v1, p1, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    .line 7
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/caverock/androidsvg/f;->C(Lcom/caverock/androidsvg/c$d0;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/f$b;

    const-string v3, "/\\*.*?\\*/"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/16 v1, 0x3a

    .line 9
    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/f$b;->m(C)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 11
    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    const/16 v1, 0x3b

    .line 13
    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/f$b;->m(C)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 15
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    :cond_7
    iget-object v1, p1, Lcom/caverock/androidsvg/c$k0;->f:Lcom/caverock/androidsvg/c$d0;

    if-nez v1, :cond_8

    .line 17
    new-instance v1, Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$d0;-><init>()V

    iput-object v1, p1, Lcom/caverock/androidsvg/c$k0;->f:Lcom/caverock/androidsvg/c$d0;

    .line 18
    :cond_8
    iget-object v1, p1, Lcom/caverock/androidsvg/c$k0;->f:Lcom/caverock/androidsvg/c$d0;

    invoke-static {v1, v3, v4}, Lcom/caverock/androidsvg/f;->C(Lcom/caverock/androidsvg/c$d0;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_1

    .line 20
    :cond_9
    new-instance v2, Lcom/caverock/androidsvg/a$c;

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/a$c;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 21
    :goto_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 22
    iput-object v3, p1, Lcom/caverock/androidsvg/c$k0;->g:Ljava/util/List;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 23
    :cond_a
    invoke-virtual {v2}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    if-nez v3, :cond_b

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :cond_b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_2

    .line 27
    :cond_c
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for \"class\" attribute: "

    invoke-static {p2, v1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private k(Lcom/caverock/androidsvg/c$z0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xb

    if-eq v2, v3, :cond_3

    const/16 v3, 0x53

    if-eq v2, v3, :cond_2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/f;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/c$z0;->o:Ljava/util/List;

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v1}, Lcom/caverock/androidsvg/f;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/c$z0;->n:Ljava/util/List;

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v1}, Lcom/caverock/androidsvg/f;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/c$z0;->q:Ljava/util/List;

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {v1}, Lcom/caverock/androidsvg/f;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/c$z0;->p:Ljava/util/List;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/f$a;->z0:Lcom/caverock/androidsvg/f$a;

    if-ne v1, v2, :cond_1

    .line 3
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/f;->A(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/c$m;->k(Landroid/graphics/Matrix;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private m(Lcom/caverock/androidsvg/c$q0;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x31

    if-eq v2, v3, :cond_5

    const/16 v3, 0x51

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 6
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v1

    .line 7
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 8
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 10
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v4

    .line 11
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 12
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 14
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 15
    new-instance v5, Lcom/caverock/androidsvg/c$a;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v5, v1, v3, v4, v2}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    .line 16
    iput-object v5, p1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid viewBox. height cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid viewBox. width cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid viewBox definition - should have four numbers"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_5
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/f;->z(Lcom/caverock/androidsvg/c$o0;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private static n(Ljava/lang/String;)Lcom/caverock/androidsvg/c$e;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    .line 3
    new-instance v0, Lcom/caverock/androidsvg/c$e;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/c$e;-><init>(I)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v1, v0, 0xf00

    and-int/lit16 v2, v0, 0xf0

    and-int/lit8 v0, v0, 0xf

    .line 6
    new-instance v3, Lcom/caverock/androidsvg/c$e;

    shl-int/lit8 v4, v1, 0x10

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Lcom/caverock/androidsvg/c$e;-><init>(I)V

    return-object v3

    .line 7
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad hex colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Bad colour value: "

    invoke-static {v1, p0}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rgb("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    new-instance v0, Lcom/caverock/androidsvg/f$b;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 12
    invoke-static {v0}, Lcom/caverock/androidsvg/f;->o(Lcom/caverock/androidsvg/f$b;)I

    move-result v1

    .line 13
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 14
    invoke-static {v0}, Lcom/caverock/androidsvg/f;->o(Lcom/caverock/androidsvg/f$b;)I

    move-result v2

    .line 15
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 16
    invoke-static {v0}, Lcom/caverock/androidsvg/f;->o(Lcom/caverock/androidsvg/f$b;)I

    move-result v3

    .line 17
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->q()V

    const/16 v4, 0x29

    .line 18
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    new-instance p0, Lcom/caverock/androidsvg/c$e;

    shl-int/lit8 v0, v1, 0x10

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/c$e;-><init>(I)V

    return-object p0

    .line 20
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Bad rgb() colour value: "

    invoke-static {v1, p0}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_4
    sget-object v1, Lcom/caverock/androidsvg/f;->j:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 22
    new-instance p0, Lcom/caverock/androidsvg/c$e;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/c$e;-><init>(I)V

    return-object p0

    .line 23
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid colour keyword: "

    invoke-static {v1, p0}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static o(Lcom/caverock/androidsvg/f$b;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v1, 0x25

    .line 2
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x43800000    # 256.0f

    mul-float v0, v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v0, p0

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/high16 p0, 0x437f0000    # 255.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_2

    const/16 p0, 0xff

    goto :goto_0

    :cond_2
    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method private static p(Ljava/lang/String;)Lcom/caverock/androidsvg/c$n0;
    .locals 1

    const-string v0, "none"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "currentColor"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/caverock/androidsvg/c$f;->a()Lcom/caverock/androidsvg/c$f;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/caverock/androidsvg/f;->n(Ljava/lang/String;)Lcom/caverock/androidsvg/c$e;

    move-result-object p0

    return-object p0
.end method

.method private static q(Ljava/lang/String;)Lcom/caverock/androidsvg/c$d0$a;
    .locals 2

    const-string v0, "nonzero"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/caverock/androidsvg/c$d0$a;->b:Lcom/caverock/androidsvg/c$d0$a;

    return-object p0

    :cond_0
    const-string v0, "evenodd"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/caverock/androidsvg/c$d0$a;->c:Lcom/caverock/androidsvg/c$d0$a;

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid fill-rule property: "

    invoke-static {v1, p0}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static r(Ljava/lang/String;)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid float value: "

    invoke-static {v2, p0}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid float value (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static s(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    .line 3
    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/f$b;->m(C)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 7
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0
.end method

.method private static t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "none"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "url("

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attribute. Expected \"none\" or \"url()\" format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    sget-object v1, Lcom/caverock/androidsvg/c$c1;->b:Lcom/caverock/androidsvg/c$c1;

    add-int/lit8 v2, v0, -0x1

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 5
    sget-object v1, Lcom/caverock/androidsvg/c$c1;->j:Lcom/caverock/androidsvg/c$c1;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 6
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/c$c1;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/c$c1;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid length unit specifier: "

    invoke-static {v1, p0}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 10
    :try_start_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 11
    new-instance v2, Lcom/caverock/androidsvg/c$o;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 12
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid length value: "

    invoke-static {v2, p0}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 13
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid length value (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static v(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 5
    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_2

    .line 7
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length list value: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v3, v2, Lcom/caverock/androidsvg/f$b;->b:I

    .line 9
    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    iget v5, v2, Lcom/caverock/androidsvg/f$b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/caverock/androidsvg/f$b;->g(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    iget v4, v2, Lcom/caverock/androidsvg/f$b;->b:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/caverock/androidsvg/f$b;->b:I

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, v2, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    iget v4, v2, Lcom/caverock/androidsvg/f$b;->b:I

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 12
    iput v3, v2, Lcom/caverock/androidsvg/f$b;->b:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->n()Lcom/caverock/androidsvg/c$c1;

    move-result-object v3

    if-nez v3, :cond_3

    .line 15
    sget-object v3, Lcom/caverock/androidsvg/c$c1;->b:Lcom/caverock/androidsvg/c$c1;

    .line 16
    :cond_3
    new-instance v4, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v4, p0, v3}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v2}, Lcom/caverock/androidsvg/f$b;->p()Z

    goto :goto_0

    .line 18
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid length list (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static w(Lcom/caverock/androidsvg/f$b;)Lcom/caverock/androidsvg/c$o;
    .locals 1

    const-string v0, "auto"

    .line 1
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/f$b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/caverock/androidsvg/c$o;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/c$o;-><init>(F)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->j()Lcom/caverock/androidsvg/c$o;

    move-result-object p0

    return-object p0
.end method

.method private static x(Ljava/lang/String;)F
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/caverock/androidsvg/f;->r(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v1

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    return p0
.end method

.method private static y(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/c$n0;
    .locals 2

    const-string v0, "url("

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ")"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/caverock/androidsvg/f;->p(Ljava/lang/String;)Lcom/caverock/androidsvg/c$n0;

    move-result-object v1

    .line 7
    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/c$t;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/c$t;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/c$n0;)V

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attribute. Unterminated url() reference"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/caverock/androidsvg/f;->p(Ljava/lang/String;)Lcom/caverock/androidsvg/c$n0;

    move-result-object p0

    return-object p0
.end method

.method private static z(Lcom/caverock/androidsvg/c$o0;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defer"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 6
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->l()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    sget-object v2, Lcom/caverock/androidsvg/f;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/b$a;

    .line 8
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 9
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "meet"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    sget-object p1, Lcom/caverock/androidsvg/b$b;->b:Lcom/caverock/androidsvg/b$b;

    goto :goto_0

    :cond_1
    const-string v2, "slice"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget-object p1, Lcom/caverock/androidsvg/b$b;->c:Lcom/caverock/androidsvg/b$b;

    goto :goto_0

    .line 15
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid preserveAspectRatio definition: "

    invoke-static {v0, p1}, Lic;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p1, 0x0

    .line 16
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/b;

    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/b;-><init>(Lcom/caverock/androidsvg/b$a;Lcom/caverock/androidsvg/b$b;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/f;->e:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->g:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/f;->g:Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/f;->h:Z

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    instance-of v1, v0, Lcom/caverock/androidsvg/c$x0;

    if-eqz v1, :cond_7

    .line 11
    check-cast v0, Lcom/caverock/androidsvg/c$g0;

    .line 12
    iget-object v1, v0, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, v0, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$m0;

    .line 14
    :goto_0
    instance-of v1, v0, Lcom/caverock/androidsvg/c$b1;

    if-eqz v1, :cond_6

    .line 15
    check-cast v0, Lcom/caverock/androidsvg/c$b1;

    iget-object v1, v0, Lcom/caverock/androidsvg/c$b1;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/caverock/androidsvg/c$b1;->c:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    check-cast v0, Lcom/caverock/androidsvg/c$g0;

    new-instance v1, Lcom/caverock/androidsvg/c$b1;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/c$b1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/c$g0;->c(Lcom/caverock/androidsvg/c$m0;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public comment([CII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/f;->h:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method protected e(Ljava/io/InputStream;)Lcom/caverock/androidsvg/c;
    .locals 6

    const-string v0, "Exception thrown closing input stream"

    const-string v1, "SVGParser"

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_0
    const/4 v2, 0x3

    .line 3
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const v3, 0x8b1f

    if-ne v2, v3, :cond_1

    .line 6
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 7
    :catch_0
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 8
    :try_start_1
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 10
    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    .line 11
    invoke-interface {v2, v3, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 14
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    return-object p1

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 16
    :try_start_3
    new-instance v3, Lcom/caverock/androidsvg/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SVG parse error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/caverock/androidsvg/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    .line 17
    new-instance v3, Lcom/caverock/androidsvg/e;

    const-string v4, "XML Parser problem"

    invoke-direct {v3, v4, v2}, Lcom/caverock/androidsvg/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v2

    .line 18
    new-instance v3, Lcom/caverock/androidsvg/e;

    const-string v4, "File error"

    invoke-direct {v3, v4, v2}, Lcom/caverock/androidsvg/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    .line 20
    :catch_5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_2
    throw v2
.end method

.method public endDocument()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean p3, p0, Lcom/caverock/androidsvg/f;->c:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 3
    iget p3, p0, Lcom/caverock/androidsvg/f;->d:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/caverock/androidsvg/f;->d:I

    if-nez p3, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/caverock/androidsvg/f;->c:Z

    return-void

    :cond_0
    const-string p3, "http://www.w3.org/2000/svg"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "title"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "desc"

    if-nez p3, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "style"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 8
    iput-boolean v0, p0, Lcom/caverock/androidsvg/f;->h:Z

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/caverock/androidsvg/a;

    sget-object p3, Lcom/caverock/androidsvg/a$e;->i:Lcom/caverock/androidsvg/a$e;

    invoke-direct {p2, p3}, Lcom/caverock/androidsvg/a;-><init>(Lcom/caverock/androidsvg/a$e;)V

    .line 11
    iget-object p3, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {p2, p1}, Lcom/caverock/androidsvg/a;->d(Ljava/lang/String;)Lcom/caverock/androidsvg/a$g;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/caverock/androidsvg/c;->b(Lcom/caverock/androidsvg/a$g;)V

    .line 12
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->i:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_3
    const-string p1, "svg"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "defs"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "g"

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "use"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "image"

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "text"

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "tspan"

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "switch"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "symbol"

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "marker"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "linearGradient"

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "radialGradient"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "stop"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "clipPath"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "textPath"

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "pattern"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "view"

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "mask"

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "solidColor"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    check-cast p1, Lcom/caverock/androidsvg/c$m0;

    iget-object p1, p1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object p1, p0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    :cond_5
    return-void

    .line 33
    :cond_6
    :goto_0
    iput-boolean v0, p0, Lcom/caverock/androidsvg/f;->e:Z

    .line 34
    iget-object p2, p0, Lcom/caverock/androidsvg/f;->f:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 35
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iget-object p2, p0, Lcom/caverock/androidsvg/f;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 37
    :cond_7
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 38
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iget-object p2, p0, Lcom/caverock/androidsvg/f;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/caverock/androidsvg/f;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    .line 2
    new-instance v0, Lcom/caverock/androidsvg/c;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1
    invoke-super/range {p0 .. p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 2
    iget-boolean v4, v0, Lcom/caverock/androidsvg/f;->c:Z

    if-eqz v4, :cond_0

    .line 3
    iget v1, v0, Lcom/caverock/androidsvg/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/caverock/androidsvg/f;->d:I

    return-void

    :cond_0
    const-string v4, "http://www.w3.org/2000/svg"

    .line 4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "svg"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x1a

    if-eqz v1, :cond_8

    .line 6
    new-instance v1, Lcom/caverock/androidsvg/c$e0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$e0;-><init>()V

    .line 7
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 8
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 9
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 10
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 11
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 12
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->m(Lcom/caverock/androidsvg/c$q0;Lorg/xml/sax/Attributes;)V

    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 14
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-nez v2, :cond_2

    .line 15
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/c;->n(Lcom/caverock/androidsvg/c$e0;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 17
    :goto_1
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 18
    :cond_3
    invoke-interface {v3, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v6

    invoke-interface {v3, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_5

    const/16 v7, 0x50

    if-eq v6, v7, :cond_6

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 20
    :pswitch_0
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$e0;->q:Lcom/caverock/androidsvg/c$o;

    goto :goto_2

    .line 21
    :pswitch_1
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$e0;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_2

    .line 22
    :pswitch_2
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$e0;->r:Lcom/caverock/androidsvg/c$o;

    .line 23
    invoke-virtual {v5}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_5
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$e0;->s:Lcom/caverock/androidsvg/c$o;

    .line 26
    invoke-virtual {v5}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_7
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v1, "g"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/f;->b(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_28

    :cond_9
    const-string v1, "defs"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "Invalid document. Root element must be <svg>"

    if-eqz v1, :cond_b

    .line 31
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_a

    .line 32
    new-instance v1, Lcom/caverock/androidsvg/c$g;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$g;-><init>()V

    .line 33
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 34
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 35
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 36
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 37
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 38
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 39
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 40
    :cond_a
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string v1, "use"

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "http://www.w3.org/1999/xlink"

    const/16 v7, 0x1b

    if-eqz v1, :cond_13

    .line 42
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_12

    .line 43
    new-instance v1, Lcom/caverock/androidsvg/c$d1;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$d1;-><init>()V

    .line 44
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 45
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 46
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 47
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 48
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 49
    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v2, 0x0

    .line 50
    :goto_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_c

    .line 51
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 52
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 53
    :cond_c
    invoke-interface {v3, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v8

    invoke-interface {v3, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v4, :cond_10

    if-eq v8, v7, :cond_e

    packed-switch v8, :pswitch_data_1

    goto :goto_4

    .line 55
    :pswitch_3
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$d1;->q:Lcom/caverock/androidsvg/c$o;

    goto :goto_4

    .line 56
    :pswitch_4
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$d1;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_4

    .line 57
    :pswitch_5
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$d1;->r:Lcom/caverock/androidsvg/c$o;

    .line 58
    invoke-virtual {v5}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_4

    .line 59
    :cond_d
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <use> element. width cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_e
    invoke-interface {v3, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_4

    .line 61
    :cond_f
    iput-object v5, v1, Lcom/caverock/androidsvg/c$d1;->o:Ljava/lang/String;

    goto :goto_4

    .line 62
    :cond_10
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/c$d1;->s:Lcom/caverock/androidsvg/c$o;

    .line 63
    invoke-virtual {v5}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v5

    if-nez v5, :cond_11

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 64
    :cond_11
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <use> element. height cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_12
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    const-string v1, "path"

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 67
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_34

    .line 68
    new-instance v2, Lcom/caverock/androidsvg/c$u;

    invoke-direct {v2}, Lcom/caverock/androidsvg/c$u;-><init>()V

    .line 69
    iget-object v4, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v4, v2, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 70
    iput-object v1, v2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 71
    invoke-direct {v0, v2, v3}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 72
    invoke-direct {v0, v2, v3}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 73
    invoke-direct {v0, v2, v3}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 74
    invoke-direct {v0, v2, v3}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    .line 75
    :goto_5
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v1, v4, :cond_14

    .line 76
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v2}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    goto/16 :goto_28

    .line 77
    :cond_14
    invoke-interface {v3, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v5

    invoke-interface {v3, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0xe

    const/4 v7, 0x0

    if-eq v5, v6, :cond_17

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_15

    goto :goto_6

    .line 79
    :cond_15
    invoke-static {v4}, Lcom/caverock/androidsvg/f;->r(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcom/caverock/androidsvg/c$u;->p:Ljava/lang/Float;

    .line 80
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_16

    :goto_6
    move/from16 v17, v1

    goto/16 :goto_14

    .line 81
    :cond_16
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_17
    new-instance v5, Lcom/caverock/androidsvg/f$b;

    invoke-direct {v5, v4}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v4, Lcom/caverock/androidsvg/c$v;

    invoke-direct {v4}, Lcom/caverock/androidsvg/c$v;-><init>()V

    .line 84
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v6

    if-eqz v6, :cond_18

    :goto_7
    move/from16 v17, v1

    goto/16 :goto_13

    .line 85
    :cond_18
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->h()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x4d

    const/16 v8, 0x6d

    if-eq v6, v7, :cond_19

    if-eq v6, v8, :cond_19

    goto :goto_7

    :cond_19
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v14, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 86
    :goto_8
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->q()V

    const-string v11, " path segment"

    const-string v12, "Bad path coords for "

    const-string v13, "SVGParser"

    const/16 v6, 0x6c

    sparse-switch v14, :sswitch_data_0

    goto :goto_7

    .line 87
    :sswitch_0
    invoke-virtual {v4}, Lcom/caverock/androidsvg/c$v;->close()V

    move v7, v15

    move v8, v7

    move/from16 v6, v16

    goto :goto_9

    .line 88
    :sswitch_1
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_1a

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v14

    invoke-static {v5, v6, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_1a
    const/16 v10, 0x76

    if-ne v14, v10, :cond_1b

    .line 90
    invoke-static {v6, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v6

    .line 91
    :cond_1b
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4, v7, v9}, Lcom/caverock/androidsvg/c$v;->e(FF)V

    .line 92
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_9
    move/from16 p1, v15

    goto/16 :goto_b

    :sswitch_2
    const/high16 v6, 0x40000000    # 2.0f

    mul-float v17, v7, v6

    sub-float v17, v17, v8

    .line 93
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    mul-float v6, v6, v9

    sub-float/2addr v6, v10

    .line 94
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 95
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v10

    move/from16 p1, v15

    .line 96
    invoke-virtual {v5, v10}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v15

    if-nez v15, :cond_1c

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v14

    invoke-static {v5, v6, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1c
    const/16 v11, 0x74

    if-ne v14, v11, :cond_1d

    .line 98
    invoke-static {v10, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v10

    .line 99
    invoke-static {v15, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v15

    .line 100
    :cond_1d
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v4, v7, v9, v11, v12}, Lcom/caverock/androidsvg/c$v;->a(FFFF)V

    .line 101
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 102
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 103
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 104
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto/16 :goto_d

    :sswitch_3
    move/from16 p1, v15

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v15, v7, v6

    sub-float/2addr v15, v8

    .line 105
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    mul-float v6, v6, v9

    sub-float/2addr v6, v10

    .line 106
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 107
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v10

    .line 108
    invoke-virtual {v5, v10}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v15

    .line 109
    invoke-virtual {v5, v15}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    .line 110
    invoke-virtual {v5, v3}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v14

    invoke-static {v0, v3, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    const/16 v11, 0x73

    if-ne v14, v11, :cond_1f

    .line 112
    invoke-static {v3, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v3

    .line 113
    invoke-static {v0, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v0

    .line 114
    invoke-static {v10, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v10

    .line 115
    invoke-static {v15, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v15

    :cond_1f
    move-object v13, v10

    .line 116
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object v6, v4

    invoke-virtual/range {v6 .. v12}, Lcom/caverock/androidsvg/c$v;->c(FFFFFF)V

    .line 117
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 118
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 119
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 120
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v9, v0

    move v8, v3

    move/from16 v20, v7

    move v7, v6

    move/from16 v6, v20

    goto/16 :goto_d

    :sswitch_4
    move/from16 p1, v15

    .line 121
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v0

    .line 122
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    .line 123
    invoke-virtual {v5, v3}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v6

    .line 124
    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v8

    if-nez v8, :cond_20

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v14

    invoke-static {v0, v3, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_20
    const/16 v10, 0x71

    if-ne v14, v10, :cond_21

    .line 126
    invoke-static {v6, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v6

    .line 127
    invoke-static {v8, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v8

    .line 128
    invoke-static {v0, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v0

    .line 129
    invoke-static {v3, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v3

    .line 130
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v4, v7, v9, v10, v11}, Lcom/caverock/androidsvg/c$v;->a(FFFF)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 132
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 133
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 134
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v6

    move v9, v7

    move v7, v0

    move v6, v3

    goto/16 :goto_d

    :sswitch_5
    const/16 v0, 0x6d

    .line 135
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v3

    .line 136
    invoke-virtual {v5, v3}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_22

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v14

    invoke-static {v0, v3, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_22
    if-ne v14, v0, :cond_23

    .line 138
    invoke-virtual {v4}, Lcom/caverock/androidsvg/c$v;->g()Z

    move-result v8

    if-nez v8, :cond_23

    .line 139
    invoke-static {v3, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v3

    .line 140
    invoke-static {v6, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v6

    .line 141
    :cond_23
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/caverock/androidsvg/c$v;->b(FF)V

    .line 142
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 143
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    if-ne v14, v0, :cond_24

    const/16 v0, 0x6c

    const/16 v14, 0x6c

    goto :goto_a

    :cond_24
    const/16 v0, 0x4c

    const/16 v14, 0x4c

    :goto_a
    move v10, v9

    move/from16 v16, v10

    move v7, v15

    goto/16 :goto_c

    :sswitch_6
    move/from16 p1, v15

    .line 144
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v0

    .line 145
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_25

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v14

    invoke-static {v0, v3, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_25
    if-ne v14, v6, :cond_26

    .line 147
    invoke-static {v0, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v0

    .line 148
    invoke-static {v3, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v3

    .line 149
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/caverock/androidsvg/c$v;->e(FF)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 151
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v8, v7

    :goto_b
    move/from16 v15, p1

    move v9, v6

    move/from16 v20, v8

    move v8, v7

    move/from16 v7, v20

    goto/16 :goto_e

    :sswitch_7
    move/from16 p1, v15

    .line 152
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_27

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v14

    invoke-static {v0, v3, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_27
    const/16 v3, 0x68

    if-ne v14, v3, :cond_28

    .line 154
    invoke-static {v0, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v0

    .line 155
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3, v9}, Lcom/caverock/androidsvg/c$v;->e(FF)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move/from16 v15, p1

    move v7, v0

    :goto_c
    move v8, v7

    move v6, v10

    goto/16 :goto_e

    :sswitch_8
    move/from16 p1, v15

    .line 157
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v0

    .line 158
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    .line 159
    invoke-virtual {v5, v3}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v6

    .line 160
    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v8

    .line 161
    invoke-virtual {v5, v8}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v10

    .line 162
    invoke-virtual {v5, v10}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v15

    if-nez v15, :cond_29

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v14

    invoke-static {v0, v3, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_29
    const/16 v11, 0x63

    if-ne v14, v11, :cond_2a

    .line 164
    invoke-static {v10, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v10

    .line 165
    invoke-static {v15, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v15

    .line 166
    invoke-static {v0, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v0

    .line 167
    invoke-static {v3, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v3

    .line 168
    invoke-static {v6, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v6

    .line 169
    invoke-static {v8, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v8

    :cond_2a
    move-object v13, v6

    move-object/from16 v17, v10

    move-object/from16 v18, v15

    move-object v15, v8

    .line 170
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object v6, v4

    invoke-virtual/range {v6 .. v12}, Lcom/caverock/androidsvg/c$v;->c(FFFFFF)V

    .line 171
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 172
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 173
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 174
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_d
    move/from16 v15, p1

    :goto_e
    move/from16 v17, v1

    move v10, v6

    move/from16 v20, v8

    move v8, v7

    move/from16 v7, v20

    goto/16 :goto_f

    :sswitch_9
    move/from16 p1, v15

    .line 175
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->i()Ljava/lang/Float;

    move-result-object v0

    .line 176
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    .line 177
    invoke-virtual {v5, v3}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v6

    .line 178
    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/f$b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v8

    .line 179
    invoke-virtual {v5, v8}, Lcom/caverock/androidsvg/f$b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v10

    .line 180
    invoke-virtual {v5, v10}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v15

    move/from16 v17, v1

    .line 181
    invoke-virtual {v5, v15}, Lcom/caverock/androidsvg/f$b;->c(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 182
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_33

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2b

    goto/16 :goto_12

    :cond_2b
    const/16 v11, 0x61

    if-ne v14, v11, :cond_2c

    .line 183
    invoke-static {v15, v7}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v15

    .line 184
    invoke-static {v1, v9}, Lic;->B(Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object v1

    .line 185
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object v6, v4

    move v8, v0

    move v10, v3

    invoke-virtual/range {v6 .. v13}, Lcom/caverock/androidsvg/c$v;->d(FFFZZFF)V

    .line 186
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 187
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move/from16 v15, p1

    move v7, v0

    move v8, v7

    move v9, v1

    move v10, v9

    .line 188
    :goto_f
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->p()Z

    .line 189
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_13

    .line 190
    :cond_2d
    iget v0, v5, Lcom/caverock/androidsvg/f$b;->b:I

    iget-object v1, v5, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2e

    goto :goto_10

    .line 191
    :cond_2e
    iget-object v0, v5, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    iget v1, v5, Lcom/caverock/androidsvg/f$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_2f

    const/16 v1, 0x7a

    if-le v0, v1, :cond_30

    :cond_2f
    const/16 v1, 0x41

    if-lt v0, v1, :cond_31

    const/16 v1, 0x5a

    if-le v0, v1, :cond_30

    goto :goto_10

    :cond_30
    const/4 v0, 0x1

    goto :goto_11

    :cond_31
    :goto_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_32

    .line 192
    invoke-virtual {v5}, Lcom/caverock/androidsvg/f$b;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v1, v17

    goto/16 :goto_8

    .line 193
    :cond_33
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v14

    invoke-static {v0, v1, v11, v13}, Lic;->u(Ljava/lang/StringBuilder;CLjava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_13
    iput-object v4, v2, Lcom/caverock/androidsvg/c$u;->o:Lcom/caverock/androidsvg/c$v;

    :goto_14
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    goto/16 :goto_5

    .line 195
    :cond_34
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    const-string v0, "rect"

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3a

    const/16 v3, 0x39

    if-eqz v0, :cond_3f

    move-object/from16 v0, p0

    .line 197
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v2, :cond_3e

    .line 198
    new-instance v5, Lcom/caverock/androidsvg/c$a0;

    invoke-direct {v5}, Lcom/caverock/androidsvg/c$a0;-><init>()V

    .line 199
    iget-object v6, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v6, v5, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 200
    iput-object v2, v5, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    move-object/from16 v8, p4

    .line 201
    invoke-direct {v0, v5, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 202
    invoke-direct {v0, v5, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 203
    invoke-direct {v0, v5, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 204
    invoke-direct {v0, v5, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v2, 0x0

    .line 205
    :goto_15
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v2, v6, :cond_36

    .line 206
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v5}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    goto/16 :goto_28

    .line 207
    :cond_36
    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v7

    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v7, v7, v9

    if-eq v7, v4, :cond_3c

    if-eq v7, v3, :cond_3a

    if-eq v7, v1, :cond_38

    packed-switch v7, :pswitch_data_2

    goto :goto_16

    .line 209
    :pswitch_6
    invoke-static {v6}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/c$a0;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_16

    .line 210
    :pswitch_7
    invoke-static {v6}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/c$a0;->o:Lcom/caverock/androidsvg/c$o;

    goto :goto_16

    .line 211
    :pswitch_8
    invoke-static {v6}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/c$a0;->q:Lcom/caverock/androidsvg/c$o;

    .line 212
    invoke-virtual {v6}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_16

    .line 213
    :cond_37
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_38
    invoke-static {v6}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/c$a0;->t:Lcom/caverock/androidsvg/c$o;

    .line 215
    invoke-virtual {v6}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_16

    .line 216
    :cond_39
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_3a
    invoke-static {v6}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/c$a0;->s:Lcom/caverock/androidsvg/c$o;

    .line 218
    invoke-virtual {v6}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_16

    .line 219
    :cond_3b
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_3c
    invoke-static {v6}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/c$a0;->r:Lcom/caverock/androidsvg/c$o;

    .line 221
    invoke-virtual {v6}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v6

    if-nez v6, :cond_3d

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 222
    :cond_3d
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_3e
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    move-object/from16 v0, p0

    move-object/from16 v8, p4

    const-string v4, "circle"

    .line 224
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v9, 0x32

    const/16 v10, 0x8

    const/4 v11, 0x7

    if-eqz v4, :cond_46

    .line 225
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_45

    .line 226
    new-instance v2, Lcom/caverock/androidsvg/c$c;

    invoke-direct {v2}, Lcom/caverock/androidsvg/c$c;-><init>()V

    .line 227
    iget-object v3, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v3, v2, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 228
    iput-object v1, v2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 229
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 230
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 231
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 232
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    .line 233
    :goto_17
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_40

    .line 234
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v2}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    goto/16 :goto_28

    .line 235
    :cond_40
    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v4

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v11, :cond_44

    if-eq v4, v10, :cond_43

    if-eq v4, v9, :cond_41

    goto :goto_18

    .line 237
    :cond_41
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$c;->q:Lcom/caverock/androidsvg/c$o;

    .line 238
    invoke-virtual {v3}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_18

    .line 239
    :cond_42
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_43
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$c;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_18

    .line 241
    :cond_44
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$c;->o:Lcom/caverock/androidsvg/c$o;

    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 242
    :cond_45
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    const-string v4, "ellipse"

    .line 243
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 244
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v2, :cond_4e

    .line 245
    new-instance v4, Lcom/caverock/androidsvg/c$h;

    invoke-direct {v4}, Lcom/caverock/androidsvg/c$h;-><init>()V

    .line 246
    iget-object v5, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v5, v4, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 247
    iput-object v2, v4, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 248
    invoke-direct {v0, v4, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 249
    invoke-direct {v0, v4, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 250
    invoke-direct {v0, v4, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 251
    invoke-direct {v0, v4, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v2, 0x0

    .line 252
    :goto_19
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_47

    .line 253
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v4}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    goto/16 :goto_28

    .line 254
    :cond_47
    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v6

    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v11, :cond_4d

    if-eq v6, v10, :cond_4c

    if-eq v6, v3, :cond_4a

    if-eq v6, v1, :cond_48

    goto :goto_1a

    .line 256
    :cond_48
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v4, Lcom/caverock/androidsvg/c$h;->r:Lcom/caverock/androidsvg/c$o;

    .line 257
    invoke-virtual {v5}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_1a

    .line 258
    :cond_49
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_4a
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v4, Lcom/caverock/androidsvg/c$h;->q:Lcom/caverock/androidsvg/c$o;

    .line 260
    invoke-virtual {v5}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_1a

    .line 261
    :cond_4b
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_4c
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v4, Lcom/caverock/androidsvg/c$h;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_1a

    .line 263
    :cond_4d
    invoke-static {v5}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v5

    iput-object v5, v4, Lcom/caverock/androidsvg/c$h;->o:Lcom/caverock/androidsvg/c$o;

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 264
    :cond_4e
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    const-string v1, "line"

    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 266
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_51

    .line 267
    new-instance v2, Lcom/caverock/androidsvg/c$p;

    invoke-direct {v2}, Lcom/caverock/androidsvg/c$p;-><init>()V

    .line 268
    iget-object v3, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v3, v2, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 269
    iput-object v1, v2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 270
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 271
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 272
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 273
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    .line 274
    :goto_1b
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_50

    .line 275
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v2}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    goto/16 :goto_28

    .line 276
    :cond_50
    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v4

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    goto :goto_1c

    .line 278
    :pswitch_9
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p;->r:Lcom/caverock/androidsvg/c$o;

    goto :goto_1c

    .line 279
    :pswitch_a
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p;->q:Lcom/caverock/androidsvg/c$o;

    goto :goto_1c

    .line 280
    :pswitch_b
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_1c

    .line 281
    :pswitch_c
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p;->o:Lcom/caverock/androidsvg/c$o;

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 282
    :cond_51
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    const-string v1, "polyline"

    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 284
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v2, :cond_53

    .line 285
    new-instance v3, Lcom/caverock/androidsvg/c$y;

    invoke-direct {v3}, Lcom/caverock/androidsvg/c$y;-><init>()V

    .line 286
    iget-object v4, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v4, v3, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 287
    iput-object v2, v3, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 288
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 289
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 290
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 291
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 292
    invoke-direct {v0, v3, v8, v1}, Lcom/caverock/androidsvg/f;->i(Lcom/caverock/androidsvg/c$y;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 293
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v3}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    goto/16 :goto_28

    .line 294
    :cond_53
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    const-string v1, "polygon"

    .line 295
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 296
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v2, :cond_55

    .line 297
    new-instance v3, Lcom/caverock/androidsvg/c$z;

    invoke-direct {v3}, Lcom/caverock/androidsvg/c$z;-><init>()V

    .line 298
    iget-object v4, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v4, v3, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 299
    iput-object v2, v3, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 300
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 301
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 302
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 303
    invoke-direct {v0, v3, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 304
    invoke-direct {v0, v3, v8, v1}, Lcom/caverock/androidsvg/f;->i(Lcom/caverock/androidsvg/c$y;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 305
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v3}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    goto/16 :goto_28

    .line 306
    :cond_55
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    const-string v1, "text"

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 308
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_57

    .line 309
    new-instance v1, Lcom/caverock/androidsvg/c$v0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$v0;-><init>()V

    .line 310
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 311
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 312
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 313
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 314
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 315
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 316
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->k(Lcom/caverock/androidsvg/c$z0;Lorg/xml/sax/Attributes;)V

    .line 317
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 318
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 319
    :cond_57
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_58
    const-string v1, "tspan"

    .line 320
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 321
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_5b

    .line 322
    instance-of v1, v1, Lcom/caverock/androidsvg/c$x0;

    if-eqz v1, :cond_5a

    .line 323
    new-instance v1, Lcom/caverock/androidsvg/c$u0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$u0;-><init>()V

    .line 324
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 325
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 326
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 327
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 328
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 329
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->k(Lcom/caverock/androidsvg/c$z0;Lorg/xml/sax/Attributes;)V

    .line 330
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 331
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    .line 332
    iget-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    instance-of v3, v2, Lcom/caverock/androidsvg/c$a1;

    if-eqz v3, :cond_59

    .line 333
    check-cast v2, Lcom/caverock/androidsvg/c$a1;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/c$u0;->o(Lcom/caverock/androidsvg/c$a1;)V

    goto/16 :goto_28

    .line 334
    :cond_59
    check-cast v2, Lcom/caverock/androidsvg/c$w0;

    invoke-interface {v2}, Lcom/caverock/androidsvg/c$w0;->g()Lcom/caverock/androidsvg/c$a1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/c$u0;->o(Lcom/caverock/androidsvg/c$a1;)V

    goto/16 :goto_28

    .line 335
    :cond_5a
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_5b
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    const-string v1, "tref"

    .line 337
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 338
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_62

    .line 339
    instance-of v1, v1, Lcom/caverock/androidsvg/c$x0;

    if-eqz v1, :cond_61

    .line 340
    new-instance v1, Lcom/caverock/androidsvg/c$t0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$t0;-><init>()V

    .line 341
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 342
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 343
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 344
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 345
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    const/4 v2, 0x0

    .line 346
    :goto_1d
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_5e

    .line 347
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 348
    iget-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    instance-of v3, v2, Lcom/caverock/androidsvg/c$a1;

    if-eqz v3, :cond_5d

    .line 349
    check-cast v2, Lcom/caverock/androidsvg/c$a1;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/c$t0;->o(Lcom/caverock/androidsvg/c$a1;)V

    goto/16 :goto_28

    .line 350
    :cond_5d
    check-cast v2, Lcom/caverock/androidsvg/c$w0;

    invoke-interface {v2}, Lcom/caverock/androidsvg/c$w0;->g()Lcom/caverock/androidsvg/c$a1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/c$t0;->o(Lcom/caverock/androidsvg/c$a1;)V

    goto/16 :goto_28

    .line 351
    :cond_5e
    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v4

    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v7, :cond_5f

    goto :goto_1e

    .line 353
    :cond_5f
    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_1e

    .line 354
    :cond_60
    iput-object v3, v1, Lcom/caverock/androidsvg/c$t0;->n:Ljava/lang/String;

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 355
    :cond_61
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_62
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    const-string v1, "switch"

    .line 357
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 358
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_64

    .line 359
    new-instance v1, Lcom/caverock/androidsvg/c$r0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$r0;-><init>()V

    .line 360
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 361
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 362
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 363
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 364
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 365
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 366
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 367
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 368
    :cond_64
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_65
    const-string v1, "symbol"

    .line 369
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 370
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_66

    .line 371
    new-instance v1, Lcom/caverock/androidsvg/c$s0;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$s0;-><init>()V

    .line 372
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 373
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 374
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 375
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 376
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 377
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->m(Lcom/caverock/androidsvg/c$q0;Lorg/xml/sax/Attributes;)V

    .line 378
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 379
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 380
    :cond_66
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_67
    const-string v1, "marker"

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "userSpaceOnUse"

    if-eqz v1, :cond_72

    .line 382
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_71

    .line 383
    new-instance v1, Lcom/caverock/androidsvg/c$q;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$q;-><init>()V

    .line 384
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 385
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 386
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 387
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 388
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 389
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->m(Lcom/caverock/androidsvg/c$q0;Lorg/xml/sax/Attributes;)V

    const/4 v2, 0x0

    .line 390
    :goto_1f
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v2, v4, :cond_68

    .line 391
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 392
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 393
    :cond_68
    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v5

    invoke-interface {v8, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_6f

    const/16 v6, 0x33

    if-eq v5, v6, :cond_6e

    const/16 v6, 0x34

    if-eq v5, v6, :cond_6d

    packed-switch v5, :pswitch_data_4

    goto/16 :goto_20

    .line 395
    :pswitch_d
    invoke-static {v4}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v4

    iput-object v4, v1, Lcom/caverock/androidsvg/c$q;->s:Lcom/caverock/androidsvg/c$o;

    .line 396
    invoke-virtual {v4}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v4

    if-nez v4, :cond_69

    goto :goto_20

    .line 397
    :cond_69
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_e
    const-string v5, "strokeWidth"

    .line 398
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/4 v4, 0x0

    .line 399
    iput-boolean v4, v1, Lcom/caverock/androidsvg/c$q;->p:Z

    goto :goto_20

    .line 400
    :cond_6a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const/4 v4, 0x1

    .line 401
    iput-boolean v4, v1, Lcom/caverock/androidsvg/c$q;->p:Z

    goto :goto_20

    .line 402
    :cond_6b
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid value for attribute markerUnits"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :pswitch_f
    invoke-static {v4}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v4

    iput-object v4, v1, Lcom/caverock/androidsvg/c$q;->t:Lcom/caverock/androidsvg/c$o;

    .line 404
    invoke-virtual {v4}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_20

    .line 405
    :cond_6c
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_6d
    invoke-static {v4}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v4

    iput-object v4, v1, Lcom/caverock/androidsvg/c$q;->r:Lcom/caverock/androidsvg/c$o;

    goto :goto_20

    .line 407
    :cond_6e
    invoke-static {v4}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v4

    iput-object v4, v1, Lcom/caverock/androidsvg/c$q;->q:Lcom/caverock/androidsvg/c$o;

    goto :goto_20

    :cond_6f
    const-string v5, "auto"

    .line 408
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 409
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v1, Lcom/caverock/androidsvg/c$q;->u:Ljava/lang/Float;

    goto :goto_20

    .line 410
    :cond_70
    invoke-static {v4}, Lcom/caverock/androidsvg/f;->r(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v1, Lcom/caverock/androidsvg/c$q;->u:Ljava/lang/Float;

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    .line 411
    :cond_71
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    const/4 v1, 0x0

    const-string v4, "linearGradient"

    .line 412
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 413
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v2, :cond_74

    .line 414
    new-instance v2, Lcom/caverock/androidsvg/c$l0;

    invoke-direct {v2}, Lcom/caverock/androidsvg/c$l0;-><init>()V

    .line 415
    iget-object v3, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v3, v2, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 416
    iget-object v3, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v3, v2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 417
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 418
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 419
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->h(Lcom/caverock/androidsvg/c$i;Lorg/xml/sax/Attributes;)V

    .line 420
    :goto_21
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_73

    .line 421
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v2}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 422
    iput-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 423
    :cond_73
    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v4

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5

    goto :goto_22

    .line 425
    :pswitch_10
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$l0;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_22

    .line 426
    :pswitch_11
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$l0;->o:Lcom/caverock/androidsvg/c$o;

    goto :goto_22

    .line 427
    :pswitch_12
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$l0;->n:Lcom/caverock/androidsvg/c$o;

    goto :goto_22

    .line 428
    :pswitch_13
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$l0;->m:Lcom/caverock/androidsvg/c$o;

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 429
    :cond_74
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_75
    const-string v4, "radialGradient"

    .line 430
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 431
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v2, :cond_7d

    .line 432
    new-instance v2, Lcom/caverock/androidsvg/c$p0;

    invoke-direct {v2}, Lcom/caverock/androidsvg/c$p0;-><init>()V

    .line 433
    iget-object v3, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v3, v2, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 434
    iget-object v3, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v3, v2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 435
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 436
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 437
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->h(Lcom/caverock/androidsvg/c$i;Lorg/xml/sax/Attributes;)V

    .line 438
    :goto_23
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_76

    .line 439
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v2}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 440
    iput-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 441
    :cond_76
    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v4

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v11, :cond_7c

    if-eq v4, v10, :cond_7b

    const/16 v5, 0xc

    if-eq v4, v5, :cond_7a

    const/16 v5, 0xd

    if-eq v4, v5, :cond_79

    if-eq v4, v9, :cond_77

    goto :goto_24

    .line 443
    :cond_77
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p0;->o:Lcom/caverock/androidsvg/c$o;

    .line 444
    invoke-virtual {v3}, Lcom/caverock/androidsvg/c$o;->g()Z

    move-result v3

    if-nez v3, :cond_78

    goto :goto_24

    .line 445
    :cond_78
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_79
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p0;->q:Lcom/caverock/androidsvg/c$o;

    goto :goto_24

    .line 447
    :cond_7a
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p0;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_24

    .line 448
    :cond_7b
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p0;->n:Lcom/caverock/androidsvg/c$o;

    goto :goto_24

    .line 449
    :cond_7c
    invoke-static {v3}, Lcom/caverock/androidsvg/f;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/c$o;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/c$p0;->m:Lcom/caverock/androidsvg/c$o;

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 450
    :cond_7d
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7e
    const-string v4, "stop"

    .line 451
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 452
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->E(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_28

    :cond_7f
    const-string v4, "a"

    .line 453
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 454
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->b(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_28

    :cond_80
    const-string v4, "title"

    .line 455
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    const-string v4, "desc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    goto/16 :goto_27

    :cond_81
    const-string v4, "clipPath"

    .line 456
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 457
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v2, :cond_86

    .line 458
    new-instance v2, Lcom/caverock/androidsvg/c$d;

    invoke-direct {v2}, Lcom/caverock/androidsvg/c$d;-><init>()V

    .line 459
    iget-object v4, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v4, v2, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 460
    iget-object v4, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v4, v2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 461
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 462
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->j(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 463
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->l(Lcom/caverock/androidsvg/c$m;Lorg/xml/sax/Attributes;)V

    .line 464
    invoke-direct {v0, v2, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 465
    :goto_25
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v1, v4, :cond_82

    .line 466
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1, v2}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 467
    iput-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto/16 :goto_28

    .line 468
    :cond_82
    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {}, Lcom/caverock/androidsvg/f;->a()[I

    move-result-object v5

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/f$a;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/f$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x4

    if-eq v5, v6, :cond_83

    goto :goto_26

    :cond_83
    const-string v5, "objectBoundingBox"

    .line 470
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 471
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v2, Lcom/caverock/androidsvg/c$d;->o:Ljava/lang/Boolean;

    goto :goto_26

    .line 472
    :cond_84
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 473
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v2, Lcom/caverock/androidsvg/c$d;->o:Ljava/lang/Boolean;

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 474
    :cond_85
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid value for attribute clipPathUnits"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_86
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_87
    const-string v1, "textPath"

    .line 476
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 477
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->G(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_28

    :cond_88
    const-string v1, "pattern"

    .line 478
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 479
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->B(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_28

    :cond_89
    const-string v1, "image"

    .line 480
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 481
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->c(Lorg/xml/sax/Attributes;)V

    goto :goto_28

    :cond_8a
    const-string v1, "view"

    .line 482
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 483
    iget-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_8b

    .line 484
    new-instance v1, Lcom/caverock/androidsvg/c$e1;

    invoke-direct {v1}, Lcom/caverock/androidsvg/c$e1;-><init>()V

    .line 485
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->a:Lcom/caverock/androidsvg/c;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    .line 486
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    .line 487
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->g(Lcom/caverock/androidsvg/c$k0;Lorg/xml/sax/Attributes;)V

    .line 488
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->f(Lcom/caverock/androidsvg/c$f0;Lorg/xml/sax/Attributes;)V

    .line 489
    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/f;->m(Lcom/caverock/androidsvg/c$q0;Lorg/xml/sax/Attributes;)V

    .line 490
    iget-object v2, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/c$i0;->c(Lcom/caverock/androidsvg/c$m0;)V

    .line 491
    iput-object v1, v0, Lcom/caverock/androidsvg/f;->b:Lcom/caverock/androidsvg/c$i0;

    goto :goto_28

    .line 492
    :cond_8b
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8c
    const-string v1, "mask"

    .line 493
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 494
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->d(Lorg/xml/sax/Attributes;)V

    goto :goto_28

    :cond_8d
    const-string v1, "style"

    .line 495
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 496
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->F(Lorg/xml/sax/Attributes;)V

    goto :goto_28

    :cond_8e
    const-string v1, "solidColor"

    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 498
    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/f;->D(Lorg/xml/sax/Attributes;)V

    goto :goto_28

    :cond_8f
    const/4 v1, 0x1

    .line 499
    iput-boolean v1, v0, Lcom/caverock/androidsvg/f;->c:Z

    .line 500
    iput v1, v0, Lcom/caverock/androidsvg/f;->d:I

    goto :goto_28

    :cond_90
    :goto_27
    const/4 v1, 0x1

    .line 501
    iput-boolean v1, v0, Lcom/caverock/androidsvg/f;->e:Z

    .line 502
    iput-object v2, v0, Lcom/caverock/androidsvg/f;->f:Ljava/lang/String;

    :goto_28
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x55
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x21
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x55
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
