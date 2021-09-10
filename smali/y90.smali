.class public Ly90;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ly90;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly90;

    invoke-direct {v0}, Ly90;-><init>()V

    sput-object v0, Ly90;->b:Ly90;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ly90;
    .locals 1

    sget-object v0, Ly90;->b:Ly90;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ly90;->a:Landroid/content/Context;

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ly90;->a:Landroid/content/Context;

    return-object v0
.end method
