.class final synthetic Ly20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final b:Ly20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly20;

    invoke-direct {v0}, Ly20;-><init>()V

    sput-object v0, Ly20;->b:Ly20;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Ly20;->b:Ly20;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lb30;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
