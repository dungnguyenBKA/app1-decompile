.class final synthetic Lcom/google/android/datatransport/cct/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# static fields
.field private static final a:Lcom/google/android/datatransport/cct/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/c;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/c;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/c;->a:Lcom/google/android/datatransport/cct/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lut;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/cct/c;->a:Lcom/google/android/datatransport/cct/c;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/datatransport/cct/d$a;

    check-cast p2, Lcom/google/android/datatransport/cct/d$b;

    .line 1
    iget-object v0, p2, Lcom/google/android/datatransport/cct/d$b;->b:Ljava/net/URL;

    if-eqz v0, :cond_0

    const-string v1, "CctTransportBackend"

    const-string v2, "Following redirect to: %s"

    .line 2
    invoke-static {v1, v2, v0}, Lst;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p2, p2, Lcom/google/android/datatransport/cct/d$b;->b:Ljava/net/URL;

    .line 4
    new-instance v0, Lcom/google/android/datatransport/cct/d$a;

    iget-object v1, p1, Lcom/google/android/datatransport/cct/d$a;->b:Lrs;

    iget-object p1, p1, Lcom/google/android/datatransport/cct/d$a;->c:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/datatransport/cct/d$a;-><init>(Ljava/net/URL;Lrs;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
