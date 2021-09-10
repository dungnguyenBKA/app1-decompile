.class public Lsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrb<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lsa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsa;

    invoke-direct {v0}, Lsa;-><init>()V

    sput-object v0, Lsa;->a:Lsa;

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
    invoke-static {p1}, Lza;->d(Lub;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
