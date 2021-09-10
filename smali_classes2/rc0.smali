.class public Lrc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc0;


# instance fields
.field private a:Lmc0;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmc0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lrc0;->a:Lmc0;

    .line 3
    iput-object p1, p0, Lrc0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)[Ltc0;
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [Ltc0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1
    iget-object v3, p0, Lrc0;->a:Lmc0;

    iget-object v4, p0, Lrc0;->b:Landroid/content/Context;

    invoke-static {v3, p1, v4}, Luc0;->d(Lmc0;Landroid/graphics/Rect;Landroid/content/Context;)Luc0;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc0;->a:Lmc0;

    invoke-virtual {v0}, Lmc0;->a()V

    return-void
.end method
