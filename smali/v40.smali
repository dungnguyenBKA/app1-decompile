.class final synthetic Lv40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld50;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv40;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ld50;
    .locals 1

    new-instance v0, Lv40;

    invoke-direct {v0, p0}, Lv40;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv40;->a:Landroid/content/Context;

    .line 1
    sget v1, Ly40;->c:I

    .line 2
    invoke-static {v0}, Lb50;->a(Landroid/content/Context;)Lb50;

    move-result-object v0

    return-object v0
.end method
