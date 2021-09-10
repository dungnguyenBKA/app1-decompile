.class public Lfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrb<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lfb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfb;

    invoke-direct {v0}, Lfb;-><init>()V

    sput-object v0, Lfb;->a:Lfb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lub;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lza;->b(Lub;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
