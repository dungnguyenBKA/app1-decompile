.class public final Leg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lag<",
        "Ljava/lang/Integer;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leg$a;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ldg;)Lzf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            ")",
            "Lzf<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Leg;

    iget-object v1, p0, Leg$a;->a:Landroid/content/res/Resources;

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    .line 2
    invoke-virtual {p1, v2, v3}, Ldg;->c(Ljava/lang/Class;Ljava/lang/Class;)Lzf;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Leg;-><init>(Landroid/content/res/Resources;Lzf;)V

    return-object v0
.end method
