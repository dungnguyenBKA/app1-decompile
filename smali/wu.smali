.class final synthetic Lwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# static fields
.field private static final a:Lwu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwu;

    invoke-direct {v0}, Lwu;-><init>()V

    sput-object v0, Lwu;->a:Lwu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcv$b;
    .locals 1

    sget-object v0, Lwu;->a:Lwu;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    sget v0, Lcv;->g:I

    .line 2
    new-instance v0, Lkv;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p1}, Lkv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
