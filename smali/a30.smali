.class final synthetic La30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final a:La30;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La30;

    invoke-direct {v0}, La30;-><init>()V

    sput-object v0, La30;->a:La30;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/FilenameFilter;
    .locals 1

    sget-object v0, La30;->a:La30;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget p1, Lb30;->l:I

    const-string p1, "event"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
