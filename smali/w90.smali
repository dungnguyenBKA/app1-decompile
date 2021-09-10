.class public Lw90;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lw90;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw90;

    invoke-direct {v0}, Lw90;-><init>()V

    sput-object v0, Lw90;->a:Lw90;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lw90;
    .locals 1

    sget-object v0, Lw90;->a:Lw90;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method
