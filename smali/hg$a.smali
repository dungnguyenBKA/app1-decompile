.class public Lhg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lag<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Lhg$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhg$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhg$a;

    invoke-direct {v0}, Lhg$a;-><init>()V

    sput-object v0, Lhg$a;->a:Lhg$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lhg$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lhg$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lhg$a;->a:Lhg$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ldg;)Lzf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            ")",
            "Lzf<",
            "TModel;TModel;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lhg;->c()Lhg;

    move-result-object p1

    return-object p1
.end method
