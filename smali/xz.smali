.class final synthetic Lxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final a:Lxz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxz;

    invoke-direct {v0}, Lxz;-><init>()V

    sput-object v0, Lxz;->a:Lxz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/FilenameFilter;
    .locals 1

    sget-object v0, Lxz;->a:Lxz;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p1, Lzz;->t:Ljava/io/FilenameFilter;

    const-string p1, ".ae"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
