.class final synthetic Le30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzr;


# static fields
.field private static final a:Le30;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le30;

    invoke-direct {v0}, Le30;-><init>()V

    sput-object v0, Le30;->a:Le30;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lzr;
    .locals 1

    sget-object v0, Le30;->a:Le30;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li20;

    invoke-static {p1}, Lf30;->b(Li20;)[B

    move-result-object p1

    return-object p1
.end method
