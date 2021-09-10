.class public Lf30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lr20;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Lzr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzr<",
            "Li20;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final synthetic f:I


# instance fields
.field private final a:Las;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Las<",
            "Li20;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr20;

    invoke-direct {v0}, Lr20;-><init>()V

    sput-object v0, Lf30;->b:Lr20;

    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    .line 2
    invoke-static {v0, v1}, Lf30;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf30;->c:Ljava/lang/String;

    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    const-string v1, "IayrSTFL9eJ69YeSUO2"

    .line 3
    invoke-static {v0, v1}, Lf30;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf30;->d:Ljava/lang/String;

    .line 4
    invoke-static {}, Le30;->a()Lzr;

    move-result-object v0

    sput-object v0, Lf30;->e:Lzr;

    return-void
.end method

.method constructor <init>(Las;Lzr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Las<",
            "Li20;",
            ">;",
            "Lzr<",
            "Li20;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf30;->a:Las;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lf30;
    .locals 4

    .line 1
    invoke-static {p0}, Lmt;->c(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lmt;->a()Lmt;

    move-result-object p0

    new-instance v0, Lcom/google/android/datatransport/cct/a;

    sget-object v1, Lf30;->c:Ljava/lang/String;

    sget-object v2, Lf30;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lmt;->d(Lct;)Lbs;

    move-result-object p0

    const-class v0, Li20;

    const-string v1, "json"

    .line 4
    invoke-static {v1}, Lwr;->b(Ljava/lang/String;)Lwr;

    move-result-object v1

    sget-object v2, Lf30;->e:Lzr;

    const-string v3, "FIREBASE_CRASHLYTICS_REPORT"

    .line 5
    invoke-interface {p0, v3, v0, v1, v2}, Lbs;->a(Ljava/lang/String;Ljava/lang/Class;Lwr;Lzr;)Las;

    move-result-object p0

    .line 6
    new-instance v0, Lf30;

    invoke-direct {v0, p0, v2}, Lf30;-><init>(Las;Lzr;)V

    return-object v0
.end method

.method static synthetic b(Li20;)[B
    .locals 1

    .line 1
    sget-object v0, Lf30;->b:Lr20;

    invoke-virtual {v0, p0}, Lr20;->m(Li20;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public d(Ll00;)Lkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll00;",
            ")",
            "Lkw<",
            "Ll00;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ll00;->b()Li20;

    move-result-object v0

    .line 2
    new-instance v1, Llw;

    invoke-direct {v1}, Llw;-><init>()V

    .line 3
    iget-object v2, p0, Lf30;->a:Las;

    .line 4
    invoke-static {v0}, Lxr;->d(Ljava/lang/Object;)Lxr;

    move-result-object v0

    invoke-static {v1, p1}, Ld30;->b(Llw;Ll00;)Lcs;

    move-result-object p1

    .line 5
    invoke-interface {v2, v0, p1}, Las;->a(Lxr;Lcs;)V

    .line 6
    invoke-virtual {v1}, Llw;->a()Lkw;

    move-result-object p1

    return-object p1
.end method
