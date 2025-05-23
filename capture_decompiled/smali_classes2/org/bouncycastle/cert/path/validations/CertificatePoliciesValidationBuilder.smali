.class public Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;
.super Ljava/lang/Object;


# instance fields
.field private isAnyPolicyInhibited:Z

.field private isExplicitPolicyRequired:Z

.field private isPolicyMappingInhibited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(I)Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isExplicitPolicyRequired:Z

    iget-boolean v2, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isAnyPolicyInhibited:Z

    iget-boolean v3, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isPolicyMappingInhibited:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(IZZZ)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/cert/path/CertPath;)Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
    .locals 0

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPath;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->build(I)Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    move-result-object p1

    return-object p1
.end method

.method public setAnyPolicyInhibited(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isAnyPolicyInhibited:Z

    return-void
.end method

.method public setExplicitPolicyRequired(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isExplicitPolicyRequired:Z

    return-void
.end method

.method public setPolicyMappingInhibited(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isPolicyMappingInhibited:Z

    return-void
.end method
