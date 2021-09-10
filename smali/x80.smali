.class public abstract Lx80;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lx80;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ls70;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    new-instance v0, Lw80;

    invoke-direct {v0}, Lw80;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ly80;

    invoke-direct {v0}, Ly80;-><init>()V

    :goto_0
    sput-object v0, Lx80;->a:Lx80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lx80;
    .locals 1

    .line 1
    sget-object v0, Lx80;->a:Lx80;

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/reflect/AccessibleObject;)V
.end method
