.class final synthetic Lcom/google/firebase/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx50$a;


# static fields
.field private static final a:Lcom/google/firebase/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/d;

    invoke-direct {v0}, Lcom/google/firebase/d;-><init>()V

    sput-object v0, Lcom/google/firebase/d;->a:Lcom/google/firebase/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lx50$a;
    .locals 1

    sget-object v0, Lcom/google/firebase/d;->a:Lcom/google/firebase/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
