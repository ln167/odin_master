package box2d - pkg.odin-lang.org 






[![Odin](https://odin-lang.org/logo.svg)](https://odin-lang.org/)


* [Home](https://odin-lang.org/)
* [Docs](https://odin-lang.org/docs)
* [Packages](/)
* [News](https://odin-lang.org/news)
* [Showcase](https://odin-lang.org/showcase)
* [Forum](https://forum.odin-lang.org)
* [Community](https://odin-lang.org/community)
* [GitHub](https://github.com/odin-lang/Odin)
* Appearance:



Current Package: *[vendor\_box2d](/vendor/box2d)*

  

#### [vendor Library](/vendor)

* [box2d](/vendor/box2d)
* [cgltf](/vendor/cgltf)
* [commonmark](/vendor/commonmark)
* compress
  + [lz4](/vendor/compress/lz4)
* [curl](/vendor/curl)
* darwin
  + [CoreVideo](/vendor/darwin/CoreVideo)
  + [Metal](/vendor/darwin/Metal)
  + [MetalKit](/vendor/darwin/MetalKit)
  + [QuartzCore](/vendor/darwin/QuartzCore)
* directx
  + [d3d11](/vendor/directx/d3d11)
  + [d3d12](/vendor/directx/d3d12)
  + [d3d\_common](/vendor/directx/d3d_common)
  + [dxc](/vendor/directx/dxc)
  + [dxgi](/vendor/directx/dxgi)
* [ENet](/vendor/ENet)
* [fontstash](/vendor/fontstash)
* [ggpo](/vendor/ggpo)
* [glfw](/vendor/glfw)
  + [bindings](/vendor/glfw/bindings)
* [kb\_text\_shape](/vendor/kb_text_shape)
* [libc-shim](/vendor/libc-shim)
* lua
  + [5.4](/vendor/lua/5.4)
* [microui](/vendor/microui)
* [miniaudio](/vendor/miniaudio)
* [nanovg](/vendor/nanovg)
  + [gl](/vendor/nanovg/gl)
* [OpenEXRCore](/vendor/OpenEXRCore)
* [OpenGL](/vendor/OpenGL)
* [portmidi](/vendor/portmidi)
* [raylib](/vendor/raylib)
* [sdl2](/vendor/sdl2)
  + [image](/vendor/sdl2/image)
  + [mixer](/vendor/sdl2/mixer)
  + [net](/vendor/sdl2/net)
  + [ttf](/vendor/sdl2/ttf)
* [sdl3](/vendor/sdl3)
  + [image](/vendor/sdl3/image)
  + [ttf](/vendor/sdl3/ttf)
* stb
  + [easy\_font](/vendor/stb/easy_font)
  + [image](/vendor/stb/image)
  + [rect\_pack](/vendor/stb/rect_pack)
  + [sprintf](/vendor/stb/sprintf)
  + [truetype](/vendor/stb/truetype)
  + [vorbis](/vendor/stb/vorbis)
* [vulkan](/vendor/vulkan)
* wasm
  + [WebGL](/vendor/wasm/WebGL)
* [wgpu](/vendor/wgpu)
  + [glfwglue](/vendor/wgpu/glfwglue)
  + [sdl2glue](/vendor/wgpu/sdl2glue)
  + [sdl3glue](/vendor/wgpu/sdl3glue)
* windows
  + [GameInput](/vendor/windows/GameInput)
  + [XAudio2](/vendor/windows/XAudio2)
* x11
  + [xlib](/vendor/x11/xlib)
* [zlib](/vendor/zlib)

1. [vendor](/vendor)
2. [box2d](/vendor/box2d)

# package vendor:box2d [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [Box2D](https://box2d.org/).

## Index

Types (92)

* [AABB](#AABB)
* [AllocFcn](#AllocFcn)
* [AssertFcn](#AssertFcn)
* [BodyDef](#BodyDef)
* [BodyEvents](#BodyEvents)
* [BodyId](#BodyId)
* [BodyMoveEvent](#BodyMoveEvent)
* [BodyType](#BodyType)
* [Capsule](#Capsule)
* [CastOutput](#CastOutput)
* [CastResultFcn](#CastResultFcn)
* [ChainDef](#ChainDef)
* [ChainId](#ChainId)
* [ChainSegment](#ChainSegment)
* [Circle](#Circle)
* [CollisionPlane](#CollisionPlane)
* [ContactBeginTouchEvent](#ContactBeginTouchEvent)
* [ContactData](#ContactData)
* [ContactEndTouchEvent](#ContactEndTouchEvent)
* [ContactEvents](#ContactEvents)
* [ContactHitEvent](#ContactHitEvent)
* [CosSin](#CosSin)
* [Counters](#Counters)
* [CustomFilterFcn](#CustomFilterFcn)
* [DebugDraw](#DebugDraw)
* [DistanceInput](#DistanceInput)
* [DistanceJointDef](#DistanceJointDef)
* [DistanceOutput](#DistanceOutput)
* [DynamicTree](#DynamicTree)
* [EnqueueTaskCallback](#EnqueueTaskCallback)
* [ExplosionDef](#ExplosionDef)
* [Filter](#Filter)
* [FilterJointDef](#FilterJointDef)
* [FinishTaskCallback](#FinishTaskCallback)
* [FreeFcn](#FreeFcn)
* [FrictionCallback](#FrictionCallback)
* [HexColor](#HexColor)
* [Hull](#Hull)
* [JointId](#JointId)
* [JointType](#JointType)
* [Manifold](#Manifold)
* [ManifoldPoint](#ManifoldPoint)
* [MassData](#MassData)
* [Mat22](#Mat22)
* [MotorJointDef](#MotorJointDef)
* [MouseJointDef](#MouseJointDef)
* [OverlapResultFcn](#OverlapResultFcn)
* [Plane](#Plane)
* [PlaneResult](#PlaneResult)
* [PlaneResultFcn](#PlaneResultFcn)
* [PlaneSolverResult](#PlaneSolverResult)
* [Polygon](#Polygon)
* [PreSolveFcn](#PreSolveFcn)
* [PrismaticJointDef](#PrismaticJointDef)
* [Profile](#Profile)
* [QueryFilter](#QueryFilter)
* [RayCastInput](#RayCastInput)
* [RayResult](#RayResult)
* [RestitutionCallback](#RestitutionCallback)
* [RevoluteJointDef](#RevoluteJointDef)
* [Rot](#Rot)
* [Segment](#Segment)
* [SegmentDistanceResult](#SegmentDistanceResult)
* [SensorBeginTouchEvent](#SensorBeginTouchEvent)
* [SensorEndTouchEvent](#SensorEndTouchEvent)
* [SensorEvents](#SensorEvents)
* [ShapeCastInput](#ShapeCastInput)
* [ShapeCastPairInput](#ShapeCastPairInput)
* [ShapeDef](#ShapeDef)
* [ShapeId](#ShapeId)
* [ShapeProxy](#ShapeProxy)
* [ShapeType](#ShapeType)
* [Simplex](#Simplex)
* [SimplexCache](#SimplexCache)
* [SimplexVertex](#SimplexVertex)
* [SurfaceMaterial](#SurfaceMaterial)
* [Sweep](#Sweep)
* [TOIInput](#TOIInput)
* [TOIOutput](#TOIOutput)
* [TOIState](#TOIState)
* [TaskCallback](#TaskCallback)
* [Transform](#Transform)
* [TreeQueryCallbackFcn](#TreeQueryCallbackFcn)
* [TreeRayCastCallbackFcn](#TreeRayCastCallbackFcn)
* [TreeShapeCastCallbackFcn](#TreeShapeCastCallbackFcn)
* [TreeStats](#TreeStats)
* [Vec2](#Vec2)
* [Version](#Version)
* [WeldJointDef](#WeldJointDef)
* [WheelJointDef](#WheelJointDef)
* [WorldDef](#WorldDef)
* [WorldId](#WorldId)

Constants (16)

* [EPSILON](#EPSILON)
* [HASH\_INIT](#HASH_INIT)
* [MAX\_POLYGON\_VERTICES](#MAX_POLYGON_VERTICES)
* [Mat22\_zero](#Mat22_zero)
* [PI](#PI)
* [Rot\_identity](#Rot_identity)
* [Transform\_identity](#Transform_identity)
* [Vec2\_zero](#Vec2_zero)
* [bodyTypeCount](#bodyTypeCount)
* [emptySimplexCache](#emptySimplexCache)
* [nullBodyId](#nullBodyId)
* [nullChainId](#nullChainId)
* [nullJointId](#nullJointId)
* [nullShapeId](#nullShapeId)
* [nullWorldId](#nullWorldId)
* [shapeTypeCount](#shapeTypeCount)

Variables (0)

This section is empty.

Procedures (489)

* [AABB\_Center](#AABB_Center)
* [AABB\_Contains](#AABB_Contains)
* [AABB\_Extents](#AABB_Extents)
* [AABB\_Overlaps](#AABB_Overlaps)
* [AABB\_Union](#AABB_Union)
* [Abs](#Abs)
* [AbsFloat](#AbsFloat)
* [AbsInt](#AbsInt)
* [Add](#Add)
* [Atan2](#Atan2)
* [Body\_ApplyAngularImpulse](#Body_ApplyAngularImpulse)
* [Body\_ApplyForce](#Body_ApplyForce)
* [Body\_ApplyForceToCenter](#Body_ApplyForceToCenter)
* [Body\_ApplyLinearImpulse](#Body_ApplyLinearImpulse)
* [Body\_ApplyLinearImpulseToCenter](#Body_ApplyLinearImpulseToCenter)
* [Body\_ApplyMassFromShapes](#Body_ApplyMassFromShapes)
* [Body\_ApplyTorque](#Body_ApplyTorque)
* [Body\_ComputeAABB](#Body_ComputeAABB)
* [Body\_Disable](#Body_Disable)
* [Body\_Enable](#Body_Enable)
* [Body\_EnableContactEvents](#Body_EnableContactEvents)
* [Body\_EnableHitEvents](#Body_EnableHitEvents)
* [Body\_EnableSleep](#Body_EnableSleep)
* [Body\_GetAngularDamping](#Body_GetAngularDamping)
* [Body\_GetAngularVelocity](#Body_GetAngularVelocity)
* [Body\_GetContactCapacity](#Body_GetContactCapacity)
* [Body\_GetContactData](#Body_GetContactData)
* [Body\_GetGravityScale](#Body_GetGravityScale)
* [Body\_GetJointCount](#Body_GetJointCount)
* [Body\_GetJoints](#Body_GetJoints)
* [Body\_GetLinearDamping](#Body_GetLinearDamping)
* [Body\_GetLinearVelocity](#Body_GetLinearVelocity)
* [Body\_GetLocalCenterOfMass](#Body_GetLocalCenterOfMass)
* [Body\_GetLocalPoint](#Body_GetLocalPoint)
* [Body\_GetLocalPointVelocity](#Body_GetLocalPointVelocity)
* [Body\_GetLocalVector](#Body_GetLocalVector)
* [Body\_GetMass](#Body_GetMass)
* [Body\_GetMassData](#Body_GetMassData)
* [Body\_GetName](#Body_GetName)
* [Body\_GetPosition](#Body_GetPosition)
* [Body\_GetRotation](#Body_GetRotation)
* [Body\_GetRotationalInertia](#Body_GetRotationalInertia)
* [Body\_GetShapeCount](#Body_GetShapeCount)
* [Body\_GetShapes](#Body_GetShapes)
* [Body\_GetSleepThreshold](#Body_GetSleepThreshold)
* [Body\_GetTransform](#Body_GetTransform)
* [Body\_GetType](#Body_GetType)
* [Body\_GetUserData](#Body_GetUserData)
* [Body\_GetWorld](#Body_GetWorld)
* [Body\_GetWorldCenterOfMass](#Body_GetWorldCenterOfMass)
* [Body\_GetWorldPoint](#Body_GetWorldPoint)
* [Body\_GetWorldPointVelocity](#Body_GetWorldPointVelocity)
* [Body\_GetWorldVector](#Body_GetWorldVector)
* [Body\_IsAwake](#Body_IsAwake)
* [Body\_IsBullet](#Body_IsBullet)
* [Body\_IsEnabled](#Body_IsEnabled)
* [Body\_IsFixedRotation](#Body_IsFixedRotation)
* [Body\_IsSleepEnabled](#Body_IsSleepEnabled)
* [Body\_IsValid](#Body_IsValid)
* [Body\_SetAngularDamping](#Body_SetAngularDamping)
* [Body\_SetAngularVelocity](#Body_SetAngularVelocity)
* [Body\_SetAwake](#Body_SetAwake)
* [Body\_SetBullet](#Body_SetBullet)
* [Body\_SetFixedRotation](#Body_SetFixedRotation)
* [Body\_SetGravityScale](#Body_SetGravityScale)
* [Body\_SetLinearDamping](#Body_SetLinearDamping)
* [Body\_SetLinearVelocity](#Body_SetLinearVelocity)
* [Body\_SetMassData](#Body_SetMassData)
* [Body\_SetName](#Body_SetName)
* [Body\_SetSleepThreshold](#Body_SetSleepThreshold)
* [Body\_SetTargetTransform](#Body_SetTargetTransform)
* [Body\_SetTransform](#Body_SetTransform)
* [Body\_SetType](#Body_SetType)
* [Body\_SetUserData](#Body_SetUserData)
* [Chain\_GetFriction](#Chain_GetFriction)
* [Chain\_GetMaterial](#Chain_GetMaterial)
* [Chain\_GetRestitution](#Chain_GetRestitution)
* [Chain\_GetSegmentCount](#Chain_GetSegmentCount)
* [Chain\_GetSegments](#Chain_GetSegments)
* [Chain\_GetWorld](#Chain_GetWorld)
* [Chain\_IsValid](#Chain_IsValid)
* [Chain\_SetFriction](#Chain_SetFriction)
* [Chain\_SetMaterial](#Chain_SetMaterial)
* [Chain\_SetRestitution](#Chain_SetRestitution)
* [Clamp](#Clamp)
* [ClampFloat](#ClampFloat)
* [ClampInt](#ClampInt)
* [ClipVector](#ClipVector)
* [CollideCapsuleAndCircle](#CollideCapsuleAndCircle)
* [CollideCapsules](#CollideCapsules)
* [CollideChainSegmentAndCapsule](#CollideChainSegmentAndCapsule)
* [CollideChainSegmentAndCircle](#CollideChainSegmentAndCircle)
* [CollideChainSegmentAndPolygon](#CollideChainSegmentAndPolygon)
* [CollideCircles](#CollideCircles)
* [CollidePolygonAndCapsule](#CollidePolygonAndCapsule)
* [CollidePolygonAndCircle](#CollidePolygonAndCircle)
* [CollidePolygons](#CollidePolygons)
* [CollideSegmentAndCapsule](#CollideSegmentAndCapsule)
* [CollideSegmentAndCircle](#CollideSegmentAndCircle)
* [CollideSegmentAndPolygon](#CollideSegmentAndPolygon)
* [ComputeAngularVelocity](#ComputeAngularVelocity)
* [ComputeCapsuleAABB](#ComputeCapsuleAABB)
* [ComputeCapsuleMass](#ComputeCapsuleMass)
* [ComputeCircleAABB](#ComputeCircleAABB)
* [ComputeCircleMass](#ComputeCircleMass)
* [ComputeCosSin](#ComputeCosSin)
* [ComputeHull](#ComputeHull)
* [ComputePolygonAABB](#ComputePolygonAABB)
* [ComputePolygonMass](#ComputePolygonMass)
* [ComputeRotationBetweenUnitVectors](#ComputeRotationBetweenUnitVectors)
* [ComputeSegmentAABB](#ComputeSegmentAABB)
* [CreateBody](#CreateBody)
* [CreateCapsuleShape](#CreateCapsuleShape)
* [CreateChain](#CreateChain)
* [CreateCircleShape](#CreateCircleShape)
* [CreateDistanceJoint](#CreateDistanceJoint)
* [CreateFilterJoint](#CreateFilterJoint)
* [CreateMotorJoint](#CreateMotorJoint)
* [CreateMouseJoint](#CreateMouseJoint)
* [CreatePolygonShape](#CreatePolygonShape)
* [CreatePrismaticJoint](#CreatePrismaticJoint)
* [CreateRevoluteJoint](#CreateRevoluteJoint)
* [CreateSegmentShape](#CreateSegmentShape)
* [CreateWeldJoint](#CreateWeldJoint)
* [CreateWheelJoint](#CreateWheelJoint)
* [CreateWorld](#CreateWorld)
* [Cross](#Cross)
* [CrossSV](#CrossSV)
* [CrossVS](#CrossVS)
* [DefaultBodyDef](#DefaultBodyDef)
* [DefaultChainDef](#DefaultChainDef)
* [DefaultDebugDraw](#DefaultDebugDraw)
* [DefaultDistanceJointDef](#DefaultDistanceJointDef)
* [DefaultExplosionDef](#DefaultExplosionDef)
* [DefaultFilter](#DefaultFilter)
* [DefaultFilterJointDef](#DefaultFilterJointDef)
* [DefaultMotorJointDef](#DefaultMotorJointDef)
* [DefaultMouseJointDef](#DefaultMouseJointDef)
* [DefaultPrismaticJointDef](#DefaultPrismaticJointDef)
* [DefaultQueryFilter](#DefaultQueryFilter)
* [DefaultRevoluteJointDef](#DefaultRevoluteJointDef)
* [DefaultShapeDef](#DefaultShapeDef)
* [DefaultSurfaceMaterial](#DefaultSurfaceMaterial)
* [DefaultWeldJointDef](#DefaultWeldJointDef)
* [DefaultWheelJointDef](#DefaultWheelJointDef)
* [DefaultWorldDef](#DefaultWorldDef)
* [DestroyBody](#DestroyBody)
* [DestroyChain](#DestroyChain)
* [DestroyJoint](#DestroyJoint)
* [DestroyShape](#DestroyShape)
* [DestroyWorld](#DestroyWorld)
* [Distance](#Distance)
* [DistanceJoint\_EnableLimit](#DistanceJoint_EnableLimit)
* [DistanceJoint\_EnableMotor](#DistanceJoint_EnableMotor)
* [DistanceJoint\_EnableSpring](#DistanceJoint_EnableSpring)
* [DistanceJoint\_GetCurrentLength](#DistanceJoint_GetCurrentLength)
* [DistanceJoint\_GetLength](#DistanceJoint_GetLength)
* [DistanceJoint\_GetMaxLength](#DistanceJoint_GetMaxLength)
* [DistanceJoint\_GetMaxMotorForce](#DistanceJoint_GetMaxMotorForce)
* [DistanceJoint\_GetMinLength](#DistanceJoint_GetMinLength)
* [DistanceJoint\_GetMotorForce](#DistanceJoint_GetMotorForce)
* [DistanceJoint\_GetMotorSpeed](#DistanceJoint_GetMotorSpeed)
* [DistanceJoint\_GetSpringDampingRatio](#DistanceJoint_GetSpringDampingRatio)
* [DistanceJoint\_GetSpringHertz](#DistanceJoint_GetSpringHertz)
* [DistanceJoint\_IsLimitEnabled](#DistanceJoint_IsLimitEnabled)
* [DistanceJoint\_IsMotorEnabled](#DistanceJoint_IsMotorEnabled)
* [DistanceJoint\_IsSpringEnabled](#DistanceJoint_IsSpringEnabled)
* [DistanceJoint\_SetLength](#DistanceJoint_SetLength)
* [DistanceJoint\_SetLengthRange](#DistanceJoint_SetLengthRange)
* [DistanceJoint\_SetMaxMotorForce](#DistanceJoint_SetMaxMotorForce)
* [DistanceJoint\_SetMotorSpeed](#DistanceJoint_SetMotorSpeed)
* [DistanceJoint\_SetSpringDampingRatio](#DistanceJoint_SetSpringDampingRatio)
* [DistanceJoint\_SetSpringHertz](#DistanceJoint_SetSpringHertz)
* [DistanceSquared](#DistanceSquared)
* [Dot](#Dot)
* [DynamicTree\_Create](#DynamicTree_Create)
* [DynamicTree\_CreateProxy](#DynamicTree_CreateProxy)
* [DynamicTree\_Destroy](#DynamicTree_Destroy)
* [DynamicTree\_DestroyProxy](#DynamicTree_DestroyProxy)
* [DynamicTree\_EnlargeProxy](#DynamicTree_EnlargeProxy)
* [DynamicTree\_GetAABB](#DynamicTree_GetAABB)
* [DynamicTree\_GetAreaRatio](#DynamicTree_GetAreaRatio)
* [DynamicTree\_GetByteCount](#DynamicTree_GetByteCount)
* [DynamicTree\_GetCategoryBits](#DynamicTree_GetCategoryBits)
* [DynamicTree\_GetHeight](#DynamicTree_GetHeight)
* [DynamicTree\_GetProxyCount](#DynamicTree_GetProxyCount)
* [DynamicTree\_GetRootBounds](#DynamicTree_GetRootBounds)
* [DynamicTree\_GetUserData](#DynamicTree_GetUserData)
* [DynamicTree\_MoveProxy](#DynamicTree_MoveProxy)
* [DynamicTree\_Query](#DynamicTree_Query)
* [DynamicTree\_RayCast](#DynamicTree_RayCast)
* [DynamicTree\_Rebuild](#DynamicTree_Rebuild)
* [DynamicTree\_SetCategoryBits](#DynamicTree_SetCategoryBits)
* [DynamicTree\_ShapeCast](#DynamicTree_ShapeCast)
* [DynamicTree\_Validate](#DynamicTree_Validate)
* [DynamicTree\_ValidateNoEnlarged](#DynamicTree_ValidateNoEnlarged)
* [GetByteCount](#GetByteCount)
* [GetInverse22](#GetInverse22)
* [GetLengthAndNormalize](#GetLengthAndNormalize)
* [GetLengthUnitsPerMeter](#GetLengthUnitsPerMeter)
* [GetMilliseconds](#GetMilliseconds)
* [GetMillisecondsAndReset](#GetMillisecondsAndReset)
* [GetSweepTransform](#GetSweepTransform)
* [GetTicks](#GetTicks)
* [Hash](#Hash)
* [ID\_EQUALS](#ID_EQUALS)
* [IS\_NON\_NULL](#IS_NON_NULL)
* [IS\_NULL](#IS_NULL)
* [IntegrateRotation](#IntegrateRotation)
* [InvMulRot](#InvMulRot)
* [InvMulTransforms](#InvMulTransforms)
* [InvRotateVector](#InvRotateVector)
* [InvTransformPoint](#InvTransformPoint)
* [IsNormalized](#IsNormalized)
* [IsNormalizedRot](#IsNormalizedRot)
* [IsValidAABB](#IsValidAABB)
* [IsValidFloat](#IsValidFloat)
* [IsValidPlane](#IsValidPlane)
* [IsValidRay](#IsValidRay)
* [IsValidRotation](#IsValidRotation)
* [IsValidVec2](#IsValidVec2)
* [Joint\_GetAngularSeparation](#Joint_GetAngularSeparation)
* [Joint\_GetBodyA](#Joint_GetBodyA)
* [Joint\_GetBodyB](#Joint_GetBodyB)
* [Joint\_GetCollideConnected](#Joint_GetCollideConnected)
* [Joint\_GetConstraintForce](#Joint_GetConstraintForce)
* [Joint\_GetConstraintTorque](#Joint_GetConstraintTorque)
* [Joint\_GetConstraintTuning](#Joint_GetConstraintTuning)
* [Joint\_GetLinearSeparation](#Joint_GetLinearSeparation)
* [Joint\_GetLocalAnchorA](#Joint_GetLocalAnchorA)
* [Joint\_GetLocalAnchorB](#Joint_GetLocalAnchorB)
* [Joint\_GetLocalAxisA](#Joint_GetLocalAxisA)
* [Joint\_GetReferenceAngle](#Joint_GetReferenceAngle)
* [Joint\_GetType](#Joint_GetType)
* [Joint\_GetUserData](#Joint_GetUserData)
* [Joint\_GetWorld](#Joint_GetWorld)
* [Joint\_IsValid](#Joint_IsValid)
* [Joint\_SetCollideConnected](#Joint_SetCollideConnected)
* [Joint\_SetConstraintTuning](#Joint_SetConstraintTuning)
* [Joint\_SetLocalAnchorA](#Joint_SetLocalAnchorA)
* [Joint\_SetLocalAnchorB](#Joint_SetLocalAnchorB)
* [Joint\_SetLocalAxisA](#Joint_SetLocalAxisA)
* [Joint\_SetReferenceAngle](#Joint_SetReferenceAngle)
* [Joint\_SetUserData](#Joint_SetUserData)
* [Joint\_WakeBodies](#Joint_WakeBodies)
* [LeftPerp](#LeftPerp)
* [Length](#Length)
* [LengthSquared](#LengthSquared)
* [Lerp](#Lerp)
* [LoadWorldId](#LoadWorldId)
* [MakeAABB](#MakeAABB)
* [MakeBox](#MakeBox)
* [MakeOffsetBox](#MakeOffsetBox)
* [MakeOffsetPolygon](#MakeOffsetPolygon)
* [MakeOffsetProxy](#MakeOffsetProxy)
* [MakeOffsetRoundedBox](#MakeOffsetRoundedBox)
* [MakeOffsetRoundedPolygon](#MakeOffsetRoundedPolygon)
* [MakePolygon](#MakePolygon)
* [MakeProxy](#MakeProxy)
* [MakeRot](#MakeRot)
* [MakeRoundedBox](#MakeRoundedBox)
* [MakeSquare](#MakeSquare)
* [Max](#Max)
* [MaxFloat](#MaxFloat)
* [MaxInt](#MaxInt)
* [Min](#Min)
* [MinFloat](#MinFloat)
* [MinInt](#MinInt)
* [MotorJoint\_GetAngularOffset](#MotorJoint_GetAngularOffset)
* [MotorJoint\_GetCorrectionFactor](#MotorJoint_GetCorrectionFactor)
* [MotorJoint\_GetLinearOffset](#MotorJoint_GetLinearOffset)
* [MotorJoint\_GetMaxForce](#MotorJoint_GetMaxForce)
* [MotorJoint\_GetMaxTorque](#MotorJoint_GetMaxTorque)
* [MotorJoint\_SetAngularOffset](#MotorJoint_SetAngularOffset)
* [MotorJoint\_SetCorrectionFactor](#MotorJoint_SetCorrectionFactor)
* [MotorJoint\_SetLinearOffset](#MotorJoint_SetLinearOffset)
* [MotorJoint\_SetMaxForce](#MotorJoint_SetMaxForce)
* [MotorJoint\_SetMaxTorque](#MotorJoint_SetMaxTorque)
* [MouseJoint\_GetMaxForce](#MouseJoint_GetMaxForce)
* [MouseJoint\_GetSpringDampingRatio](#MouseJoint_GetSpringDampingRatio)
* [MouseJoint\_GetSpringHertz](#MouseJoint_GetSpringHertz)
* [MouseJoint\_GetTarget](#MouseJoint_GetTarget)
* [MouseJoint\_SetMaxForce](#MouseJoint_SetMaxForce)
* [MouseJoint\_SetSpringDampingRatio](#MouseJoint_SetSpringDampingRatio)
* [MouseJoint\_SetSpringHertz](#MouseJoint_SetSpringHertz)
* [MouseJoint\_SetTarget](#MouseJoint_SetTarget)
* [Mul](#Mul)
* [MulAdd](#MulAdd)
* [MulMV](#MulMV)
* [MulRot](#MulRot)
* [MulSV](#MulSV)
* [MulSub](#MulSub)
* [MulTransforms](#MulTransforms)
* [NLerp](#NLerp)
* [Neg](#Neg)
* [Normalize](#Normalize)
* [NormalizeChecked](#NormalizeChecked)
* [NormalizeRot](#NormalizeRot)
* [PlaneSeparation](#PlaneSeparation)
* [PointInCapsule](#PointInCapsule)
* [PointInCircle](#PointInCircle)
* [PointInPolygon](#PointInPolygon)
* [PrismaticJoint\_EnableLimit](#PrismaticJoint_EnableLimit)
* [PrismaticJoint\_EnableMotor](#PrismaticJoint_EnableMotor)
* [PrismaticJoint\_EnableSpring](#PrismaticJoint_EnableSpring)
* [PrismaticJoint\_GetLowerLimit](#PrismaticJoint_GetLowerLimit)
* [PrismaticJoint\_GetMaxMotorForce](#PrismaticJoint_GetMaxMotorForce)
* [PrismaticJoint\_GetMotorForce](#PrismaticJoint_GetMotorForce)
* [PrismaticJoint\_GetMotorSpeed](#PrismaticJoint_GetMotorSpeed)
* [PrismaticJoint\_GetSpeed](#PrismaticJoint_GetSpeed)
* [PrismaticJoint\_GetSpringDampingRatio](#PrismaticJoint_GetSpringDampingRatio)
* [PrismaticJoint\_GetSpringHertz](#PrismaticJoint_GetSpringHertz)
* [PrismaticJoint\_GetTargetTranslation](#PrismaticJoint_GetTargetTranslation)
* [PrismaticJoint\_GetTranslation](#PrismaticJoint_GetTranslation)
* [PrismaticJoint\_GetUpperLimit](#PrismaticJoint_GetUpperLimit)
* [PrismaticJoint\_IsLimitEnabled](#PrismaticJoint_IsLimitEnabled)
* [PrismaticJoint\_IsMotorEnabled](#PrismaticJoint_IsMotorEnabled)
* [PrismaticJoint\_IsSpringEnabled](#PrismaticJoint_IsSpringEnabled)
* [PrismaticJoint\_SetLimits](#PrismaticJoint_SetLimits)
* [PrismaticJoint\_SetMaxMotorForce](#PrismaticJoint_SetMaxMotorForce)
* [PrismaticJoint\_SetMotorSpeed](#PrismaticJoint_SetMotorSpeed)
* [PrismaticJoint\_SetSpringDampingRatio](#PrismaticJoint_SetSpringDampingRatio)
* [PrismaticJoint\_SetSpringHertz](#PrismaticJoint_SetSpringHertz)
* [PrismaticJoint\_SetTargetTranslation](#PrismaticJoint_SetTargetTranslation)
* [RayCastCapsule](#RayCastCapsule)
* [RayCastCircle](#RayCastCircle)
* [RayCastPolygon](#RayCastPolygon)
* [RayCastSegment](#RayCastSegment)
* [RelativeAngle](#RelativeAngle)
* [RevoluteJoint\_EnableLimit](#RevoluteJoint_EnableLimit)
* [RevoluteJoint\_EnableMotor](#RevoluteJoint_EnableMotor)
* [RevoluteJoint\_EnableSpring](#RevoluteJoint_EnableSpring)
* [RevoluteJoint\_GetAngle](#RevoluteJoint_GetAngle)
* [RevoluteJoint\_GetLowerLimit](#RevoluteJoint_GetLowerLimit)
* [RevoluteJoint\_GetMaxMotorTorque](#RevoluteJoint_GetMaxMotorTorque)
* [RevoluteJoint\_GetMotorSpeed](#RevoluteJoint_GetMotorSpeed)
* [RevoluteJoint\_GetMotorTorque](#RevoluteJoint_GetMotorTorque)
* [RevoluteJoint\_GetSpringDampingRatio](#RevoluteJoint_GetSpringDampingRatio)
* [RevoluteJoint\_GetSpringHertz](#RevoluteJoint_GetSpringHertz)
* [RevoluteJoint\_GetTargetAngle](#RevoluteJoint_GetTargetAngle)
* [RevoluteJoint\_GetUpperLimit](#RevoluteJoint_GetUpperLimit)
* [RevoluteJoint\_IsLimitEnabled](#RevoluteJoint_IsLimitEnabled)
* [RevoluteJoint\_IsMotorEnabled](#RevoluteJoint_IsMotorEnabled)
* [RevoluteJoint\_IsSpringEnabled](#RevoluteJoint_IsSpringEnabled)
* [RevoluteJoint\_SetLimits](#RevoluteJoint_SetLimits)
* [RevoluteJoint\_SetMaxMotorTorque](#RevoluteJoint_SetMaxMotorTorque)
* [RevoluteJoint\_SetMotorSpeed](#RevoluteJoint_SetMotorSpeed)
* [RevoluteJoint\_SetSpringDampingRatio](#RevoluteJoint_SetSpringDampingRatio)
* [RevoluteJoint\_SetSpringHertz](#RevoluteJoint_SetSpringHertz)
* [RevoluteJoint\_SetTargetAngle](#RevoluteJoint_SetTargetAngle)
* [RightPerp](#RightPerp)
* [Rot\_GetAngle](#Rot_GetAngle)
* [Rot\_GetXAxis](#Rot_GetXAxis)
* [Rot\_GetYAxis](#Rot_GetYAxis)
* [RotateVector](#RotateVector)
* [SegmentDistance](#SegmentDistance)
* [SetAllocator](#SetAllocator)
* [SetAssertFcn](#SetAssertFcn)
* [SetLengthUnitsPerMeter](#SetLengthUnitsPerMeter)
* [ShapeCast](#ShapeCast)
* [ShapeCastCapsule](#ShapeCastCapsule)
* [ShapeCastCircle](#ShapeCastCircle)
* [ShapeCastPolygon](#ShapeCastPolygon)
* [ShapeCastSegment](#ShapeCastSegment)
* [ShapeDistance](#ShapeDistance)
* [Shape\_AreContactEventsEnabled](#Shape_AreContactEventsEnabled)
* [Shape\_AreHitEventsEnabled](#Shape_AreHitEventsEnabled)
* [Shape\_ArePreSolveEventsEnabled](#Shape_ArePreSolveEventsEnabled)
* [Shape\_AreSensorEventsEnabled](#Shape_AreSensorEventsEnabled)
* [Shape\_EnableContactEvents](#Shape_EnableContactEvents)
* [Shape\_EnableHitEvents](#Shape_EnableHitEvents)
* [Shape\_EnablePreSolveEvents](#Shape_EnablePreSolveEvents)
* [Shape\_EnableSensorEvents](#Shape_EnableSensorEvents)
* [Shape\_GetAABB](#Shape_GetAABB)
* [Shape\_GetBody](#Shape_GetBody)
* [Shape\_GetCapsule](#Shape_GetCapsule)
* [Shape\_GetChainSegment](#Shape_GetChainSegment)
* [Shape\_GetCircle](#Shape_GetCircle)
* [Shape\_GetClosestPoint](#Shape_GetClosestPoint)
* [Shape\_GetContactCapacity](#Shape_GetContactCapacity)
* [Shape\_GetContactData](#Shape_GetContactData)
* [Shape\_GetDensity](#Shape_GetDensity)
* [Shape\_GetFilter](#Shape_GetFilter)
* [Shape\_GetFriction](#Shape_GetFriction)
* [Shape\_GetMassData](#Shape_GetMassData)
* [Shape\_GetMaterial](#Shape_GetMaterial)
* [Shape\_GetParentChain](#Shape_GetParentChain)
* [Shape\_GetPolygon](#Shape_GetPolygon)
* [Shape\_GetRestitution](#Shape_GetRestitution)
* [Shape\_GetSegment](#Shape_GetSegment)
* [Shape\_GetSensorCapacity](#Shape_GetSensorCapacity)
* [Shape\_GetSensorOverlaps](#Shape_GetSensorOverlaps)
* [Shape\_GetSurfaceMaterial](#Shape_GetSurfaceMaterial)
* [Shape\_GetType](#Shape_GetType)
* [Shape\_GetUserData](#Shape_GetUserData)
* [Shape\_GetWorld](#Shape_GetWorld)
* [Shape\_IsSensor](#Shape_IsSensor)
* [Shape\_IsValid](#Shape_IsValid)
* [Shape\_RayCast](#Shape_RayCast)
* [Shape\_SetCapsule](#Shape_SetCapsule)
* [Shape\_SetCircle](#Shape_SetCircle)
* [Shape\_SetDensity](#Shape_SetDensity)
* [Shape\_SetFilter](#Shape_SetFilter)
* [Shape\_SetFriction](#Shape_SetFriction)
* [Shape\_SetMaterial](#Shape_SetMaterial)
* [Shape\_SetPolygon](#Shape_SetPolygon)
* [Shape\_SetRestitution](#Shape_SetRestitution)
* [Shape\_SetSegment](#Shape_SetSegment)
* [Shape\_SetSurfaceMaterial](#Shape_SetSurfaceMaterial)
* [Shape\_SetUserData](#Shape_SetUserData)
* [Shape\_TestPoint](#Shape_TestPoint)
* [Solve22](#Solve22)
* [SolvePlanes](#SolvePlanes)
* [StoreWorldId](#StoreWorldId)
* [Sub](#Sub)
* [TimeOfImpact](#TimeOfImpact)
* [TransformPoint](#TransformPoint)
* [TransformPolygon](#TransformPolygon)
* [UnwindAngle](#UnwindAngle)
* [ValidateHull](#ValidateHull)
* [WeldJoint\_GetAngularDampingRatio](#WeldJoint_GetAngularDampingRatio)
* [WeldJoint\_GetAngularHertz](#WeldJoint_GetAngularHertz)
* [WeldJoint\_GetLinearDampingRatio](#WeldJoint_GetLinearDampingRatio)
* [WeldJoint\_GetLinearHertz](#WeldJoint_GetLinearHertz)
* [WeldJoint\_SetAngularDampingRatio](#WeldJoint_SetAngularDampingRatio)
* [WeldJoint\_SetAngularHertz](#WeldJoint_SetAngularHertz)
* [WeldJoint\_SetLinearDampingRatio](#WeldJoint_SetLinearDampingRatio)
* [WeldJoint\_SetLinearHertz](#WeldJoint_SetLinearHertz)
* [WheelJoint\_EnableLimit](#WheelJoint_EnableLimit)
* [WheelJoint\_EnableMotor](#WheelJoint_EnableMotor)
* [WheelJoint\_EnableSpring](#WheelJoint_EnableSpring)
* [WheelJoint\_GetLowerLimit](#WheelJoint_GetLowerLimit)
* [WheelJoint\_GetMaxMotorTorque](#WheelJoint_GetMaxMotorTorque)
* [WheelJoint\_GetMotorSpeed](#WheelJoint_GetMotorSpeed)
* [WheelJoint\_GetMotorTorque](#WheelJoint_GetMotorTorque)
* [WheelJoint\_GetSpringDampingRatio](#WheelJoint_GetSpringDampingRatio)
* [WheelJoint\_GetSpringHertz](#WheelJoint_GetSpringHertz)
* [WheelJoint\_GetUpperLimit](#WheelJoint_GetUpperLimit)
* [WheelJoint\_IsLimitEnabled](#WheelJoint_IsLimitEnabled)
* [WheelJoint\_IsMotorEnabled](#WheelJoint_IsMotorEnabled)
* [WheelJoint\_IsSpringEnabled](#WheelJoint_IsSpringEnabled)
* [WheelJoint\_SetLimits](#WheelJoint_SetLimits)
* [WheelJoint\_SetMaxMotorTorque](#WheelJoint_SetMaxMotorTorque)
* [WheelJoint\_SetMotorSpeed](#WheelJoint_SetMotorSpeed)
* [WheelJoint\_SetSpringDampingRatio](#WheelJoint_SetSpringDampingRatio)
* [WheelJoint\_SetSpringHertz](#WheelJoint_SetSpringHertz)
* [World\_CastMover](#World_CastMover)
* [World\_CastRay](#World_CastRay)
* [World\_CastRayClosest](#World_CastRayClosest)
* [World\_CastShape](#World_CastShape)
* [World\_CollideMover](#World_CollideMover)
* [World\_Draw](#World_Draw)
* [World\_DumpMemoryStats](#World_DumpMemoryStats)
* [World\_EnableContinuous](#World_EnableContinuous)
* [World\_EnableSleeping](#World_EnableSleeping)
* [World\_EnableSpeculative](#World_EnableSpeculative)
* [World\_EnableWarmStarting](#World_EnableWarmStarting)
* [World\_Explode](#World_Explode)
* [World\_GetAwakeBodyCount](#World_GetAwakeBodyCount)
* [World\_GetBodyEvents](#World_GetBodyEvents)
* [World\_GetContactEvents](#World_GetContactEvents)
* [World\_GetCounters](#World_GetCounters)
* [World\_GetGravity](#World_GetGravity)
* [World\_GetHitEventThreshold](#World_GetHitEventThreshold)
* [World\_GetMaximumLinearSpeed](#World_GetMaximumLinearSpeed)
* [World\_GetProfile](#World_GetProfile)
* [World\_GetRestitutionThreshold](#World_GetRestitutionThreshold)
* [World\_GetSensorEvents](#World_GetSensorEvents)
* [World\_GetUserData](#World_GetUserData)
* [World\_IsContinuousEnabled](#World_IsContinuousEnabled)
* [World\_IsSleepingEnabled](#World_IsSleepingEnabled)
* [World\_IsValid](#World_IsValid)
* [World\_IsWarmStartingEnabled](#World_IsWarmStartingEnabled)
* [World\_OverlapAABB](#World_OverlapAABB)
* [World\_OverlapShape](#World_OverlapShape)
* [World\_RebuildStaticTree](#World_RebuildStaticTree)
* [World\_SetContactTuning](#World_SetContactTuning)
* [World\_SetCustomFilterCallback](#World_SetCustomFilterCallback)
* [World\_SetFrictionCallback](#World_SetFrictionCallback)
* [World\_SetGravity](#World_SetGravity)
* [World\_SetHitEventThreshold](#World_SetHitEventThreshold)
* [World\_SetMaximumLinearSpeed](#World_SetMaximumLinearSpeed)
* [World\_SetPreSolveCallback](#World_SetPreSolveCallback)
* [World\_SetRestitutionCallback](#World_SetRestitutionCallback)
* [World\_SetRestitutionThreshold](#World_SetRestitutionThreshold)
* [World\_SetUserData](#World_SetUserData)
* [World\_Step](#World_Step)
* [Yield](#Yield)
* [b2SpringDamper](#b2SpringDamper)

Procedure Groups (1)

* [IsValid](#IsValid)

## Types

### [AABB ¶](#AABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L28)

```
AABB :: struct {
	lowerBound: [2]f32,
	upperBound: [2]f32,
}
```

##### Related Procedures With Parameters

* [AABB\_Center](/vendor/box2d/#AABB_Center)
* [AABB\_Contains](/vendor/box2d/#AABB_Contains)
* [AABB\_Extents](/vendor/box2d/#AABB_Extents)
* [AABB\_Overlaps](/vendor/box2d/#AABB_Overlaps)
* [AABB\_Union](/vendor/box2d/#AABB_Union)
* [DynamicTree\_CreateProxy](/vendor/box2d/#DynamicTree_CreateProxy)
* [DynamicTree\_EnlargeProxy](/vendor/box2d/#DynamicTree_EnlargeProxy)
* [DynamicTree\_MoveProxy](/vendor/box2d/#DynamicTree_MoveProxy)
* [DynamicTree\_Query](/vendor/box2d/#DynamicTree_Query)
* [IsValidAABB](/vendor/box2d/#IsValidAABB)
* [World\_OverlapAABB](/vendor/box2d/#World_OverlapAABB)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [Body\_ComputeAABB](/vendor/box2d/#Body_ComputeAABB)
* [ComputeCapsuleAABB](/vendor/box2d/#ComputeCapsuleAABB)
* [ComputeCircleAABB](/vendor/box2d/#ComputeCircleAABB)
* [ComputePolygonAABB](/vendor/box2d/#ComputePolygonAABB)
* [ComputeSegmentAABB](/vendor/box2d/#ComputeSegmentAABB)
* [DynamicTree\_GetAABB](/vendor/box2d/#DynamicTree_GetAABB)
* [DynamicTree\_GetRootBounds](/vendor/box2d/#DynamicTree_GetRootBounds)
* [MakeAABB](/vendor/box2d/#MakeAABB)
* [Shape\_GetAABB](/vendor/box2d/#Shape_GetAABB)

### [AllocFcn ¶](#AllocFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L41)

```
AllocFcn :: proc "c" (size: u32, alignment: i32) -> rawptr
```

 

Prototype for user allocation function

```
@param size the allocation size in bytes
@param alignment the required alignment, guaranteed to be a power of 2
```




##### Related Procedures With Parameters

* [SetAllocator](/vendor/box2d/#SetAllocator)

### [AssertFcn ¶](#AssertFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L48)

```
AssertFcn :: proc "c" (condition, file_name: cstring, line_number: i32) -> i32
```

 

Prototype for the user assert callback. Return 0 to skip the debugger break.




##### Related Procedures With Parameters

* [SetAssertFcn](/vendor/box2d/#SetAssertFcn)

### [BodyDef ¶](#BodyDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L157)

```
BodyDef :: struct {
	// The body type: static, kinematic, or dynamic.
	type:              BodyType,
	// The initial world position of the body. Bodies should be created with the desired position.
	// @note Creating bodies at the origin and then moving them nearly doubles the cost of body creation, especially
	// 	if the body is moved after shapes have been added.
	position:          [2]f32,
	// The initial world rotation of the body. Use b2MakeRot() if you have an angle.
	rotation:          Rot,
	// The initial linear velocity of the body's origin. Usually in meters per second.
	linearVelocity:    [2]f32,
	// The initial angular velocity of the body. Radians per second.
	angularVelocity:   f32,
	// Linear damping is used to reduce the linear velocity. The damping parameter
	// can be larger than 1 but the damping effect becomes sensitive to the
	// time step when the damping parameter is large.
	// 	Generally linear damping is undesirable because it makes objects move slowly
	// 	as if they are f32ing.
	linearDamping:     f32,
	// Angular damping is used to reduce the angular velocity. The damping parameter
	// can be larger than 1.0f but the damping effect becomes sensitive to the
	// time step when the damping parameter is large.
	// 	Angular damping can be use slow down rotating bodies.
	angularDamping:    f32,
	// Scale the gravity applied to this body. Non-dimensional.
	gravityScale:      f32,
	// Sleep speed threshold, default is 0.05 meters per second
	sleepThreshold:    f32,
	// Optional body name for debugging. Up to 32 characters (excluding null termination)
	name:              cstring,
	// Use this to store application specific body data.
	userData:          rawptr,
	// Set this flag to false if this body should never fall asleep.
	enableSleep:       bool,
	// Is this body initially awake or sleeping?
	isAwake:           bool,
	// Should this body be prevented from rotating? Useful for characters.
	fixedRotation:     bool,
	// Treat this body as high speed object that performs continuous collision detection
	// against dynamic and kinematic bodies, but not other bullet bodies.
	// 	@warning Bullets should be used sparingly. They are not a solution for general dynamic-versus-dynamic
	// 	continuous collision. They may interfere with joint constraints.
	isBullet:          bool,
	// Used to disable a body. A disabled body does not move or collide.
	isEnabled:         bool,
	// This allows this body to bypass rotational speed limits. Should only be used
	// for circular objects, like wheels.
	allowFastRotation: bool,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:     i32,
}
```

 

A body definition holds all the data needed to construct a rigid body.
You can safely re-use body definitions. Shapes are added to a body after construction.

```
Body definitions are temporary objects used to bundle creation parameters.
```

Must be initialized using b2DefaultBodyDef().
@ingroup body




##### Related Procedures With Parameters

* [CreateBody](/vendor/box2d/#CreateBody)



##### Related Procedures With Returns

* [DefaultBodyDef](/vendor/box2d/#DefaultBodyDef)

### [BodyEvents ¶](#BodyEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1053)

```
BodyEvents :: struct {
	// Array of move events
	moveEvents: [^]BodyMoveEvent `fmt:"v,moveCount"`,
	// Number of move events
	moveCount:  i32,
}
```

 

Body events are buffered in the Box2D world and are available

```
as event arrays after the time step is complete.
Note: this date becomes invalid if bodies are destroyed
```




##### Related Procedures With Returns

* [World\_GetBodyEvents](/vendor/box2d/#World_GetBodyEvents)

### [BodyId ¶](#BodyId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L31)

```
BodyId :: struct {
	index1:     i32,
	world0:     u16,
	generation: u16,
}
```

 

/ Body id references a body instance. This should be treated as an opaque handle.




##### Related Procedures With Parameters

* [Body\_ApplyAngularImpulse](/vendor/box2d/#Body_ApplyAngularImpulse)
* [Body\_ApplyForce](/vendor/box2d/#Body_ApplyForce)
* [Body\_ApplyForceToCenter](/vendor/box2d/#Body_ApplyForceToCenter)
* [Body\_ApplyLinearImpulse](/vendor/box2d/#Body_ApplyLinearImpulse)
* [Body\_ApplyLinearImpulseToCenter](/vendor/box2d/#Body_ApplyLinearImpulseToCenter)
* [Body\_ApplyMassFromShapes](/vendor/box2d/#Body_ApplyMassFromShapes)
* [Body\_ApplyTorque](/vendor/box2d/#Body_ApplyTorque)
* [Body\_ComputeAABB](/vendor/box2d/#Body_ComputeAABB)
* [Body\_Disable](/vendor/box2d/#Body_Disable)
* [Body\_Enable](/vendor/box2d/#Body_Enable)
* [Body\_EnableContactEvents](/vendor/box2d/#Body_EnableContactEvents)
* [Body\_EnableHitEvents](/vendor/box2d/#Body_EnableHitEvents)
* [Body\_EnableSleep](/vendor/box2d/#Body_EnableSleep)
* [Body\_GetAngularDamping](/vendor/box2d/#Body_GetAngularDamping)
* [Body\_GetAngularVelocity](/vendor/box2d/#Body_GetAngularVelocity)
* [Body\_GetContactCapacity](/vendor/box2d/#Body_GetContactCapacity)
* [Body\_GetContactData](/vendor/box2d/#Body_GetContactData)
* [Body\_GetGravityScale](/vendor/box2d/#Body_GetGravityScale)
* [Body\_GetJointCount](/vendor/box2d/#Body_GetJointCount)
* [Body\_GetJoints](/vendor/box2d/#Body_GetJoints)
* [Body\_GetLinearDamping](/vendor/box2d/#Body_GetLinearDamping)
* [Body\_GetLinearVelocity](/vendor/box2d/#Body_GetLinearVelocity)
* [Body\_GetLocalCenterOfMass](/vendor/box2d/#Body_GetLocalCenterOfMass)
* [Body\_GetLocalPoint](/vendor/box2d/#Body_GetLocalPoint)
* [Body\_GetLocalPointVelocity](/vendor/box2d/#Body_GetLocalPointVelocity)
* [Body\_GetLocalVector](/vendor/box2d/#Body_GetLocalVector)
* [Body\_GetMass](/vendor/box2d/#Body_GetMass)
* [Body\_GetMassData](/vendor/box2d/#Body_GetMassData)
* [Body\_GetName](/vendor/box2d/#Body_GetName)
* [Body\_GetPosition](/vendor/box2d/#Body_GetPosition)
* [Body\_GetRotation](/vendor/box2d/#Body_GetRotation)
* [Body\_GetRotationalInertia](/vendor/box2d/#Body_GetRotationalInertia)
* [Body\_GetShapeCount](/vendor/box2d/#Body_GetShapeCount)
* [Body\_GetShapes](/vendor/box2d/#Body_GetShapes)
* [Body\_GetSleepThreshold](/vendor/box2d/#Body_GetSleepThreshold)
* [Body\_GetTransform](/vendor/box2d/#Body_GetTransform)
* [Body\_GetType](/vendor/box2d/#Body_GetType)
* [Body\_GetUserData](/vendor/box2d/#Body_GetUserData)
* [Body\_GetWorld](/vendor/box2d/#Body_GetWorld)
* [Body\_GetWorldCenterOfMass](/vendor/box2d/#Body_GetWorldCenterOfMass)
* [Body\_GetWorldPoint](/vendor/box2d/#Body_GetWorldPoint)
* [Body\_GetWorldPointVelocity](/vendor/box2d/#Body_GetWorldPointVelocity)
* [Body\_GetWorldVector](/vendor/box2d/#Body_GetWorldVector)
* [Body\_IsAwake](/vendor/box2d/#Body_IsAwake)
* [Body\_IsBullet](/vendor/box2d/#Body_IsBullet)
* [Body\_IsEnabled](/vendor/box2d/#Body_IsEnabled)
* [Body\_IsFixedRotation](/vendor/box2d/#Body_IsFixedRotation)
* [Body\_IsSleepEnabled](/vendor/box2d/#Body_IsSleepEnabled)
* [Body\_IsValid](/vendor/box2d/#Body_IsValid)
* [Body\_SetAngularDamping](/vendor/box2d/#Body_SetAngularDamping)
* [Body\_SetAngularVelocity](/vendor/box2d/#Body_SetAngularVelocity)
* [Body\_SetAwake](/vendor/box2d/#Body_SetAwake)
* [Body\_SetBullet](/vendor/box2d/#Body_SetBullet)
* [Body\_SetFixedRotation](/vendor/box2d/#Body_SetFixedRotation)
* [Body\_SetGravityScale](/vendor/box2d/#Body_SetGravityScale)
* [Body\_SetLinearDamping](/vendor/box2d/#Body_SetLinearDamping)
* [Body\_SetLinearVelocity](/vendor/box2d/#Body_SetLinearVelocity)
* [Body\_SetMassData](/vendor/box2d/#Body_SetMassData)
* [Body\_SetName](/vendor/box2d/#Body_SetName)
* [Body\_SetSleepThreshold](/vendor/box2d/#Body_SetSleepThreshold)
* [Body\_SetTargetTransform](/vendor/box2d/#Body_SetTargetTransform)
* [Body\_SetTransform](/vendor/box2d/#Body_SetTransform)
* [Body\_SetType](/vendor/box2d/#Body_SetType)
* [Body\_SetUserData](/vendor/box2d/#Body_SetUserData)
* [CreateCapsuleShape](/vendor/box2d/#CreateCapsuleShape)
* [CreateChain](/vendor/box2d/#CreateChain)
* [CreateCircleShape](/vendor/box2d/#CreateCircleShape)
* [CreatePolygonShape](/vendor/box2d/#CreatePolygonShape)
* [CreateSegmentShape](/vendor/box2d/#CreateSegmentShape)
* [DestroyBody](/vendor/box2d/#DestroyBody)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [CreateBody](/vendor/box2d/#CreateBody)
* [Joint\_GetBodyA](/vendor/box2d/#Joint_GetBodyA)
* [Joint\_GetBodyB](/vendor/box2d/#Joint_GetBodyB)
* [Shape\_GetBody](/vendor/box2d/#Shape_GetBody)

##### Related Constants

* [nullBodyId](/vendor/box2d/#nullBodyId)

### [BodyMoveEvent ¶](#BodyMoveEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1043)

```
BodyMoveEvent :: struct {
	transform:  Transform,
	bodyId:     BodyId,
	userData:   rawptr,
	fellAsleep: bool,
}
```

 

Body move events triggered when a body moves.
Triggered when a body moves due to simulation. Not reported for bodies moved by the user.
This also has a flag to indicate that the body went to sleep so the application can also
sleep that actor/entity/object associated with the body.
On the other hand if the flag does not indicate the body went to sleep then the application
can treat the actor/entity/object associated with the body as awake.

```
This is an efficient way for an application to update game object transforms rather than
calling functions such as b2Body_GetTransform() because this data is delivered as a contiguous array
and it is only populated with bodies that have moved.
@note If sleeping is disabled all dynamic and kinematic bodies will trigger move events.
```

### [BodyType ¶](#BodyType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L137)

```
BodyType :: enum i32 {
	// zero mass, zero velocity, may be manually moved
	staticBody    = 0, 
	// zero mass, velocity set by user, moved by solver
	kinematicBody = 1, 
	// positive mass, velocity determined by forces, moved by solver
	dynamicBody   = 2, 
}
```

 

The body simulation type.
Each body is one of these three types. The type determines how the body behaves in the simulation.
@ingroup body




##### Related Procedures With Parameters

* [Body\_SetType](/vendor/box2d/#Body_SetType)



##### Related Procedures With Returns

* [Body\_GetType](/vendor/box2d/#Body_GetType)

### [Capsule ¶](#Capsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L93)

```
Capsule :: struct {
	// Local center of the first semicircle
	center1: [2]f32,
	// Local center of the second semicircle
	center2: [2]f32,
	// The radius of the semicircles
	radius:  f32,
}
```

 

A solid capsule can be viewed as two semicircles connected

```
by a rectangle.
```




##### Related Procedures With Parameters

* [CollideCapsuleAndCircle](/vendor/box2d/#CollideCapsuleAndCircle)
* [CollideCapsules](/vendor/box2d/#CollideCapsules)
* [CollideChainSegmentAndCapsule](/vendor/box2d/#CollideChainSegmentAndCapsule)
* [CollidePolygonAndCapsule](/vendor/box2d/#CollidePolygonAndCapsule)
* [CollideSegmentAndCapsule](/vendor/box2d/#CollideSegmentAndCapsule)
* [ComputeCapsuleAABB](/vendor/box2d/#ComputeCapsuleAABB)
* [ComputeCapsuleMass](/vendor/box2d/#ComputeCapsuleMass)
* [CreateCapsuleShape](/vendor/box2d/#CreateCapsuleShape)
* [PointInCapsule](/vendor/box2d/#PointInCapsule)
* [RayCastCapsule](/vendor/box2d/#RayCastCapsule)
* [ShapeCastCapsule](/vendor/box2d/#ShapeCastCapsule)
* [Shape\_SetCapsule](/vendor/box2d/#Shape_SetCapsule)
* [World\_CastMover](/vendor/box2d/#World_CastMover)
* [World\_CollideMover](/vendor/box2d/#World_CollideMover)



##### Related Procedures With Returns

* [Shape\_GetCapsule](/vendor/box2d/#Shape_GetCapsule)

### [CastOutput ¶](#CastOutput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L53)

```
CastOutput :: struct {
	// The surface normal at the hit point
	normal:     [2]f32,
	// The surface hit point
	point:      [2]f32,
	// The fraction of the input translation at collision
	fraction:   f32,
	// The number of iterations used
	iterations: i32,
	// Did the cast hit?
	hit:        bool,
}
```

 

Low level ray cast or shape-cast output data. Returns a zero fraction and normal in the case of initial overlap.




##### Related Procedures With Returns

* [RayCastCapsule](/vendor/box2d/#RayCastCapsule)
* [RayCastCircle](/vendor/box2d/#RayCastCircle)
* [RayCastPolygon](/vendor/box2d/#RayCastPolygon)
* [RayCastSegment](/vendor/box2d/#RayCastSegment)
* [ShapeCast](/vendor/box2d/#ShapeCast)
* [ShapeCastCapsule](/vendor/box2d/#ShapeCastCapsule)
* [ShapeCastCircle](/vendor/box2d/#ShapeCastCircle)
* [ShapeCastPolygon](/vendor/box2d/#ShapeCastPolygon)
* [ShapeCastSegment](/vendor/box2d/#ShapeCastSegment)
* [Shape\_RayCast](/vendor/box2d/#Shape_RayCast)

### [CastResultFcn ¶](#CastResultFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1124)

```
CastResultFcn :: proc "c" (shapeId: ShapeId, point: [2]f32, normal: [2]f32, fraction: f32, ctx: rawptr) -> f32
```

 

Prototype callback for ray and shape casts.
Called for each shape found in the query. You control how the ray cast
proceeds by returning a f32:
return -1: ignore this shape and continue
return 0: terminate the ray cast
return fraction: clip the ray to this point
return 1: don't clip the ray and continue
A cast with initial overlap will return a zero fraction and a zero normal.
@param shapeId the shape hit by the ray
@param point the point of initial intersection
@param normal the normal vector at the point of intersection, zero for a shape cast with initial overlap
@param fraction the fraction along the ray at the point of intersection, zero for a shape cast with initial overlap

```
@param context the user context
```

@return -1 to filter, 0 to terminate, fraction to clip the ray for closest hit, 1 to continue
@see b2World\_CastRay

```
@ingroup world
```




##### Related Procedures With Parameters

* [World\_CastRay](/vendor/box2d/#World_CastRay)
* [World\_CastShape](/vendor/box2d/#World_CastShape)

### [ChainDef ¶](#ChainDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L392)

```
ChainDef :: struct {
	// Use this to store application specific shape data.
	userData:           rawptr,
	// An array of at least 4 points. These are cloned and may be temporary.
	points:             [^][2]f32 `fmt:"v,count"`,
	// The point count, must be 4 or more.
	count:              i32,
	// Surface materials for each segment. These are cloned.
	materials:          [^]SurfaceMaterial `fmt:"v,materialCount"`,
	// The material count. Must be 1 or count. This allows you to provide one
	// material for all segments or a unique material per segment.
	materialCount:      i32,
	// Contact filtering data.
	filter:             Filter,
	// Indicates a closed chain formed by connecting the first and last points
	isLoop:             bool,
	// Enable sensors to detect this chain. False by default.
	enableSensorEvents: bool,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:      i32,
}
```

 

Used to create a chain of line segments. This is designed to eliminate ghost collisions with some limitations.

```
- chains are one-sided
- chains have no mass and should be used on static bodies
- chains have a counter-clockwise winding order (normal points right of segment direction)
- chains are either a loop or open
```

a chain must have at least 4 points

```
- the distance between any two points must be greater than B2_LINEAR_SLOP
- a chain shape should not self intersect (this is not validated)
- an open chain shape has NO COLLISION on the first and final edge
- you may overlap two open chains on their first three and/or last three points to get smooth collision
- a chain shape creates multiple line segment shapes on the body
```

https://en.wikipedia.org/wiki/Polygonal\_chain
Must be initialized using b2DefaultChainDef().

```
@warning Do not use chain shapes unless you understand the limitations. This is an advanced feature.
```

@ingroup shape




##### Related Procedures With Parameters

* [CreateChain](/vendor/box2d/#CreateChain)



##### Related Procedures With Returns

* [DefaultChainDef](/vendor/box2d/#DefaultChainDef)

### [ChainId ¶](#ChainId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L45)

```
ChainId :: struct {
	index1:     i32,
	world0:     u16,
	generation: u16,
}
```

 

/ Chain id references a chain instances. This should be treated as an opaque handle.




##### Related Procedures With Parameters

* [Chain\_GetFriction](/vendor/box2d/#Chain_GetFriction)
* [Chain\_GetMaterial](/vendor/box2d/#Chain_GetMaterial)
* [Chain\_GetRestitution](/vendor/box2d/#Chain_GetRestitution)
* [Chain\_GetSegmentCount](/vendor/box2d/#Chain_GetSegmentCount)
* [Chain\_GetSegments](/vendor/box2d/#Chain_GetSegments)
* [Chain\_GetWorld](/vendor/box2d/#Chain_GetWorld)
* [Chain\_IsValid](/vendor/box2d/#Chain_IsValid)
* [Chain\_SetFriction](/vendor/box2d/#Chain_SetFriction)
* [Chain\_SetMaterial](/vendor/box2d/#Chain_SetMaterial)
* [Chain\_SetRestitution](/vendor/box2d/#Chain_SetRestitution)
* [DestroyChain](/vendor/box2d/#DestroyChain)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [CreateChain](/vendor/box2d/#CreateChain)
* [Shape\_GetParentChain](/vendor/box2d/#Shape_GetParentChain)

##### Related Constants

* [nullChainId](/vendor/box2d/#nullChainId)

### [ChainSegment ¶](#ChainSegment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L139)

```
ChainSegment :: struct {
	// The tail ghost vertex
	ghost1:  [2]f32,
	// The line segment
	segment: Segment,
	// The head ghost vertex
	ghost2:  [2]f32,
	// The owning chain shape index (internal usage only)
	chainId: i32,
}
```

 

A line segment with one-sided collision. Only collides on the right side.
Several of these are generated for a chain shape.
ghost1 -> point1 -> point2 -> ghost2




##### Related Procedures With Parameters

* [CollideChainSegmentAndCapsule](/vendor/box2d/#CollideChainSegmentAndCapsule)
* [CollideChainSegmentAndCircle](/vendor/box2d/#CollideChainSegmentAndCircle)
* [CollideChainSegmentAndPolygon](/vendor/box2d/#CollideChainSegmentAndPolygon)



##### Related Procedures With Returns

* [Shape\_GetChainSegment](/vendor/box2d/#Shape_GetChainSegment)

### [Circle ¶](#Circle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L83)

```
Circle :: struct {
	// The local center
	center: [2]f32,
	// The radius
	radius: f32,
}
```

 

A solid circle




##### Related Procedures With Parameters

* [CollideCapsuleAndCircle](/vendor/box2d/#CollideCapsuleAndCircle)
* [CollideChainSegmentAndCircle](/vendor/box2d/#CollideChainSegmentAndCircle)
* [CollideCircles](/vendor/box2d/#CollideCircles)
* [CollidePolygonAndCircle](/vendor/box2d/#CollidePolygonAndCircle)
* [CollideSegmentAndCircle](/vendor/box2d/#CollideSegmentAndCircle)
* [ComputeCircleAABB](/vendor/box2d/#ComputeCircleAABB)
* [ComputeCircleMass](/vendor/box2d/#ComputeCircleMass)
* [CreateCircleShape](/vendor/box2d/#CreateCircleShape)
* [PointInCircle](/vendor/box2d/#PointInCircle)
* [RayCastCircle](/vendor/box2d/#RayCastCircle)
* [ShapeCastCircle](/vendor/box2d/#ShapeCastCircle)
* [Shape\_SetCircle](/vendor/box2d/#Shape_SetCircle)



##### Related Procedures With Returns

* [Shape\_GetCircle](/vendor/box2d/#Shape_GetCircle)

### [CollisionPlane ¶](#CollisionPlane) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L471)

```
CollisionPlane :: struct {
	// The collision plane between the mover and some shape
	plane:        Plane,
	// Setting this to FLT_MAX makes the plane as rigid as possible. Lower values can
	// make the plane collision soft. Usually in meters.
	pushLimit:    f32,
	// The push on the mover determined by b2SolvePlanes. Usually in meters.
	push:         f32,
	// Indicates if b2ClipVector should clip against this plane. Should be false for soft collision.
	clipVelocity: bool,
}
```

 

These are collision planes that can be fed to b2SolvePlanes. Normally
this is assembled by the user from plane results in b2PlaneResult

### [ContactBeginTouchEvent ¶](#ContactBeginTouchEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L961)

```
ContactBeginTouchEvent :: struct {
	shapeIdA: ShapeId,
	shapeIdB: ShapeId,
	manifold: Manifold,
}
```

 

A begin touch event is generated when two shapes begin touching.

### [ContactData ¶](#ContactData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1065)

```
ContactData :: struct {
	shapeIdA: ShapeId,
	shapeIdB: ShapeId,
	manifold: Manifold,
}
```

 

The contact data for two shapes. By convention the manifold normal points

```
from shape A to shape B.
@see b2Shape_GetContactData() and b2Body_GetContactData()
```

### [ContactEndTouchEvent ¶](#ContactEndTouchEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L977)

```
ContactEndTouchEvent :: struct {
	// Id of the first shape
	// @warning this shape may have been destroyed
	// @see b2Shape_IsValid
	shapeIdA: ShapeId,
	// Id of the second shape
	// @warning this shape may have been destroyed
	// @see b2Shape_IsValid
	shapeIdB: ShapeId,
}
```

 

An end touch event is generated when two shapes stop touching.
You will get an end event if you do anything that destroys contacts previous to the last
world step. These include things like setting the transform, destroying a body
or shape, or changing a filter or body type.

### [ContactEvents ¶](#ContactEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1013)

```
ContactEvents :: struct {
	// Array of begin touch events
	beginEvents: [^]ContactBeginTouchEvent `fmt:"v,beginCount"`,
	// Array of end touch events
	endEvents:   [^]ContactEndTouchEvent `fmt:"v,endCount"`,
	// Array of hit events
	hitEvents:   [^]ContactHitEvent `fmt:"v,hitCount"`,
	// Number of begin touch events
	beginCount:  i32,
	// Number of end touch events
	endCount:    i32,
	// Number of hit events
	hitCount:    i32,
}
```

 

Contact events are buffered in the Box2D world and are available

```
as event arrays after the time step is complete.
Note: these may become invalid if bodies and/or shapes are destroyed
```




##### Related Procedures With Returns

* [World\_GetContactEvents](/vendor/box2d/#World_GetContactEvents)

### [ContactHitEvent ¶](#ContactHitEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L991)

```
ContactHitEvent :: struct {
	// Id of the first shape
	shapeIdA:      ShapeId,
	// Id of the second shape
	shapeIdB:      ShapeId,
	// Point where the shapes hit at the beginning of the time step.
	// This is a mid-point between the two surfaces. It could be at speculative
	// point where the two shapes were not touching at the beginning of the time step.
	point:         [2]f32,
	// Normal vector pointing from shape A to shape B
	normal:        [2]f32,
	// The speed the shapes are approaching. Always positive. Typically in meters per second.
	approachSpeed: f32,
}
```

 

A hit touch event is generated when two shapes collide with a speed faster than the hit speed threshold.
This may be reported for speculative contacts that have a confirmed impulse.

### [CosSin ¶](#CosSin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L12)

```
CosSin :: struct {
	// cosine and sine
	cosine: f32,
	sine:   f32,
}
```

 

Cosine and sine pair
This uses a custom implementation designed for cross-platform determinism




##### Related Procedures With Returns

* [ComputeCosSin](/vendor/box2d/#ComputeCosSin)

### [Counters ¶](#Counters) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L451)

```
Counters :: struct {
	bodyCount:        i32,
	shapeCount:       i32,
	contactCount:     i32,
	jointCount:       i32,
	islandCount:      i32,
	stackUsed:        i32,
	staticTreeHeight: i32,
	treeHeight:       i32,
	byteCount:        i32,
	taskCount:        i32,
	colorCounts:      [12]i32,
}
```

 

Counters that give details of the simulation size.




##### Related Procedures With Returns

* [World\_GetCounters](/vendor/box2d/#World_GetCounters)

### [CustomFilterFcn ¶](#CustomFilterFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1084)

```
CustomFilterFcn :: proc "c" (shapeIdA, shapeIdB: ShapeId, ctx: rawptr) -> bool
```

 

Prototype for a contact filter callback.
This is called when a contact pair is considered for collision. This allows you to

```
perform custom logic to prevent collision between shapes. This is only called if
one of the two shapes has custom filtering enabled. @see b2ShapeDef.
```

Notes:

```
- this function must be thread-safe
- this is only called if one of the two shapes has enabled custom filtering
```

this is called only for awake dynamic bodies

```
Return false if you want to disable the collision
@warning Do not attempt to modify the world inside this callback
@ingroup world
```




##### Related Procedures With Parameters

* [World\_SetCustomFilterCallback](/vendor/box2d/#World_SetCustomFilterCallback)

### [DebugDraw ¶](#DebugDraw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1284)

```
DebugDraw :: struct {
	// Draw a closed polygon provided in CCW order.
	DrawPolygonFcn:       proc "c" (vertices: [^][2]f32, vertexCount: i32, color: HexColor, ctx: rawptr),
	// Draw a solid closed polygon provided in CCW order.
	DrawSolidPolygonFcn:  proc "c" (transform: Transform, vertices: [^][2]f32, vertexCount: i32, radius: f32, colr: HexColor, ctx: rawptr),
	// Draw a circle.
	DrawCircleFcn:        proc "c" (center: [2]f32, radius: f32, color: HexColor, ctx: rawptr),
	// Draw a solid circle.
	DrawSolidCircleFcn:   proc "c" (transform: Transform, radius: f32, color: HexColor, ctx: rawptr),
	// Draw a solid capsule.
	DrawSolidCapsuleFcn:  proc "c" (p1, p2: [2]f32, radius: f32, color: HexColor, ctx: rawptr),
	// Draw a line segment.
	DrawSegmentFcn:       proc "c" (p1, p2: [2]f32, color: HexColor, ctx: rawptr),
	// Draw a transform. Choose your own length scale.
	DrawTransformFcn:     proc "c" (transform: Transform, ctx: rawptr),
	// Draw a point.
	DrawPointFcn:         proc "c" (p: [2]f32, size: f32, color: HexColor, ctx: rawptr),
	// Draw a string in world space.
	DrawStringFcn:        proc "c" (p: [2]f32, s: cstring, color: HexColor, ctx: rawptr),
	// Bounds to use if restricting drawing to a rectangular region
	drawingBounds:        AABB,
	// Option to restrict drawing to a rectangular region. May suffer from unstable depth sorting.
	useDrawingBounds:     bool,
	// Option to draw shapes
	drawShapes:           bool,
	// Option to draw joints
	drawJoints:           bool,
	// Option to draw additional information for joints
	drawJointExtras:      bool,
	// Option to draw the bounding boxes for shapes
	drawBounds:           bool,
	// Option to draw the mass and center of mass of dynamic bodies
	drawMass:             bool,
	// Option to draw body names
	drawBodyNames:        bool,
	// Option to draw contact points
	drawContacts:         bool,
	// Option to visualize the graph coloring used for contacts and joints
	drawGraphColors:      bool,
	// Option to draw contact normals
	drawContactNormals:   bool,
	// Option to draw contact normal impulses
	drawContactImpulses:  bool,
	// Option to draw contact feature ids
	drawContactFeatures:  bool,
	// Option to draw contact friction impulses
	drawFrictionImpulses: bool,
	// Option to draw islands as bounding boxes
	drawIslands:          bool,
	// User context that is passed as an argument to drawing callback functions
	userContext:          rawptr,
}
```

 

This struct holds callbacks you can implement to draw a Box2D world.

```
@ingroup world
```




##### Related Procedures With Parameters

* [World\_Draw](/vendor/box2d/#World_Draw)



##### Related Procedures With Returns

* [DefaultDebugDraw](/vendor/box2d/#DefaultDebugDraw)

### [DistanceInput ¶](#DistanceInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L209)

```
DistanceInput :: struct {
	// The proxy for shape A
	proxyA:     ShapeProxy,
	// The proxy for shape B
	proxyB:     ShapeProxy,
	// The world transform for shape A
	transformA: Transform,
	// The world transform for shape B
	transformB: Transform,
	// Should the proxy radius be considered?
	useRadii:   bool,
}
```

 

Input for b2ShapeDistance




##### Related Procedures With Parameters

* [ShapeDistance](/vendor/box2d/#ShapeDistance)

### [DistanceJointDef ¶](#DistanceJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L489)

```
DistanceJointDef :: struct {
	// The first attached body
	bodyIdA:          BodyId,
	// The second attached body
	bodyIdB:          BodyId,
	// The local anchor point relative to bodyA's origin
	localAnchorA:     [2]f32,
	// The local anchor point relative to bodyB's origin
	localAnchorB:     [2]f32,
	// The rest length of this joint. Clamped to a stable minimum value.
	length:           f32,
	// Enable the distance constraint to behave like a spring. If false
	// 	then the distance joint will be rigid, overriding the limit and motor.
	enableSpring:     bool,
	// The spring linear stiffness Hertz, cycles per second
	hertz:            f32,
	// The spring linear damping ratio, non-dimensional
	dampingRatio:     f32,
	// Enable/disable the joint limit
	enableLimit:      bool,
	// Minimum length. Clamped to a stable minimum value.
	minLength:        f32,
	// Maximum length. Must be greater than or equal to the minimum length.
	maxLength:        f32,
	// Enable/disable the joint motor
	enableMotor:      bool,
	// The maximum motor force, usually in newtons
	maxMotorForce:    f32,
	// The desired motor speed, usually in meters per second
	motorSpeed:       f32,
	// Set this flag to true if the attached bodies should collide
	collideConnected: bool,
	// User data pointer
	userData:         rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:    i32,
}
```

 

Distance joint definition

This requires defining an anchor point on both
bodies and the non-zero distance of the distance joint. The definition uses
local anchor points so that the initial configuration can violate the
constraint slightly. This helps when saving and loading a game.
@ingroup distance\_joint




##### Related Procedures With Parameters

* [CreateDistanceJoint](/vendor/box2d/#CreateDistanceJoint)



##### Related Procedures With Returns

* [DefaultDistanceJointDef](/vendor/box2d/#DefaultDistanceJointDef)

### [DistanceOutput ¶](#DistanceOutput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L227)

```
DistanceOutput :: struct {
	pointA:       [2]f32,
	// Closest point on shapeA
	pointB:       [2]f32,
	// Closest point on shapeB
	normal:       [2]f32,
	// Normal vector that points from A to B. Invalid if distance is zero.
	distance:     f32,
	// The final distance, zero if overlapped
	iterations:   i32,
	// Number of GJK iterations used
	simplexCount: i32,
}
```

 

Output for b2ShapeDistance




##### Related Procedures With Returns

* [ShapeDistance](/vendor/box2d/#ShapeDistance)

### [DynamicTree ¶](#DynamicTree) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L386)

```
DynamicTree :: struct {
	// The tree nodes
	nodes:           rawptr,
	// The root index
	root:            i32,
	// The number of nodes
	nodeCount:       i32,
	// The allocated node space
	nodeCapacity:    i32,
	// Node free list
	freeList:        i32,
	// Number of proxies created
	proxyCount:      i32,
	// Leaf indices for rebuild
	leafIndices:     [^]i32,
	// Leaf bounding boxes for rebuild
	leafBoxes:       [^]AABB,
	// Leaf bounding box centers for rebuild
	leafCenters:     [^][2]f32,
	// Bins for sorting during rebuild
	binIndices:      [^]i32,
	// Allocated space for rebuilding
	rebuildCapacity: i32,
}
```

 

The dynamic tree structure. This should be considered private data.
It is placed here for performance reasons.




##### Related Procedures With Parameters

* [DynamicTree\_CreateProxy](/vendor/box2d/#DynamicTree_CreateProxy)
* [DynamicTree\_Destroy](/vendor/box2d/#DynamicTree_Destroy)
* [DynamicTree\_DestroyProxy](/vendor/box2d/#DynamicTree_DestroyProxy)
* [DynamicTree\_EnlargeProxy](/vendor/box2d/#DynamicTree_EnlargeProxy)
* [DynamicTree\_GetAABB](/vendor/box2d/#DynamicTree_GetAABB)
* [DynamicTree\_GetAreaRatio](/vendor/box2d/#DynamicTree_GetAreaRatio)
* [DynamicTree\_GetByteCount](/vendor/box2d/#DynamicTree_GetByteCount)
* [DynamicTree\_GetCategoryBits](/vendor/box2d/#DynamicTree_GetCategoryBits)
* [DynamicTree\_GetHeight](/vendor/box2d/#DynamicTree_GetHeight)
* [DynamicTree\_GetProxyCount](/vendor/box2d/#DynamicTree_GetProxyCount)
* [DynamicTree\_GetRootBounds](/vendor/box2d/#DynamicTree_GetRootBounds)
* [DynamicTree\_GetUserData](/vendor/box2d/#DynamicTree_GetUserData)
* [DynamicTree\_MoveProxy](/vendor/box2d/#DynamicTree_MoveProxy)
* [DynamicTree\_Query](/vendor/box2d/#DynamicTree_Query)
* [DynamicTree\_RayCast](/vendor/box2d/#DynamicTree_RayCast)
* [DynamicTree\_Rebuild](/vendor/box2d/#DynamicTree_Rebuild)
* [DynamicTree\_SetCategoryBits](/vendor/box2d/#DynamicTree_SetCategoryBits)
* [DynamicTree\_ShapeCast](/vendor/box2d/#DynamicTree_ShapeCast)
* [DynamicTree\_Validate](/vendor/box2d/#DynamicTree_Validate)
* [DynamicTree\_ValidateNoEnlarged](/vendor/box2d/#DynamicTree_ValidateNoEnlarged)



##### Related Procedures With Returns

* [DynamicTree\_Create](/vendor/box2d/#DynamicTree_Create)

### [EnqueueTaskCallback ¶](#EnqueueTaskCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L34)

```
EnqueueTaskCallback :: proc "c" (task: TaskCallback, itemCount: i32, minRange: i32, taskContext: rawptr, userContext: rawptr) -> rawptr
```

 

These functions can be provided to Box2D to invoke a task system. These are designed to work well with enkiTS.
Returns a pointer to the user's task object. May be nullptr. A nullptr indicates to Box2D that the work was executed

```
serially within the callback and there is no need to call b2FinishTaskCallback.
The itemCount is the number of Box2D work items that are to be partitioned among workers by the user's task system.
This is essentially a parallel-for. The minRange parameter is a suggestion of the minimum number of items to assign
per worker to reduce overhead. For example, suppose the task is small and that itemCount is 16. A minRange of 8 suggests
that your task system should split the work items among just two workers, even if you have more available.
In general the range [startIndex, endIndex) send to TaskCallback should obey:
endIndex - startIndex >= minRange
The exception of course is when itemCount < minRange.
@ingroup world
```

### [ExplosionDef ¶](#ExplosionDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L882)

```
ExplosionDef :: struct {
	// / Mask bits to filter shapes
	maskBits:         u64,
	// / The center of the explosion in world space
	position:         [2]f32,
	// / The radius of the explosion
	radius:           f32,
	// / The falloff distance beyond the radius. Impulse is reduced to zero at this distance.
	falloff:          f32,
	// / Impulse per unit length. This applies an impulse according to the shape perimeter that
	// / is facing the explosion. Explosions only apply to circles, capsules, and polygons. This
	// / may be negative for implosions.
	impulsePerLength: f32,
}
```

 

The explosion definition is used to configure options for explosions. Explosions
consider shape geometry when computing the impulse.
@ingroup world




##### Related Procedures With Parameters

* [World\_Explode](/vendor/box2d/#World_Explode)



##### Related Procedures With Returns

* [DefaultExplosionDef](/vendor/box2d/#DefaultExplosionDef)

### [Filter ¶](#Filter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L230)

```
Filter :: struct {
	// The collision category bits. Normally you would just set one bit. The category bits should
	// 	represent your application object types. For example:
	// 	@code{.odin}
	// 	My_Categories :: enum u64 {
	// 		Static  = 0x00000001,
	// 		Dynamic = 0x00000002,
	// 		Debris  = 0x00000004,
	// 		Player  = 0x00000008,
	// 		// etc
	// 	};
	// 	@endcode
	//      Or use a bit_set.
	categoryBits: u64,
	// The collision mask bits. This states the categories that this
	// shape would accept for collision.
	// 	For example, you may want your player to only collide with static objects
	// 	and other players.
	// 	@code{.odin}
	// 	maskBits = u64(My_Categories.Static | My_Categories.Player);
	// 	@endcode
	maskBits:     u64,
	// Collision groups allow a certain group of objects to never collide (negative)
	// or always collide (positive). A group index of zero has no effect. Non-zero group filtering
	// always wins against the mask bits.
	// 	For example, you may want ragdolls to collide with other ragdolls but you don't want
	// 	ragdoll self-collision. In this case you would give each ragdoll a unique negative group index
	// 	and apply that group index to all shapes on the ragdoll.
	groupIndex:   i32,
}
```

 

This is used to filter collision on shapes. It affects shape-vs-shape collision

```
and shape-versus-query collision (such as b2World_CastRay).
```

@ingroup shape




##### Related Procedures With Parameters

* [Shape\_SetFilter](/vendor/box2d/#Shape_SetFilter)



##### Related Procedures With Returns

* [DefaultFilter](/vendor/box2d/#DefaultFilter)
* [Shape\_GetFilter](/vendor/box2d/#Shape_GetFilter)

### [FilterJointDef ¶](#FilterJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L618)

```
FilterJointDef :: struct {
	// / The first attached body.
	bodyIdA:       BodyId,
	// / The second attached body.
	bodyIdB:       BodyId,
	// / User data pointer
	userData:      rawptr,
	// / Used internally to detect a valid definition. DO NOT SET.
	internalValue: i32,
}
```

 

A filter joint is used to disable collision between two specific bodies.

@ingroup filter\_joint




##### Related Procedures With Parameters

* [CreateFilterJoint](/vendor/box2d/#CreateFilterJoint)



##### Related Procedures With Returns

* [DefaultFilterJointDef](/vendor/box2d/#DefaultFilterJointDef)

### [FinishTaskCallback ¶](#FinishTaskCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L38)

```
FinishTaskCallback :: proc "c" (userTask: rawptr, userContext: rawptr)
```

 

Finishes a user task object that wraps a Box2D task.

```
@ingroup world
```

### [FreeFcn ¶](#FreeFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L45)

```
FreeFcn :: proc "c" (mem: rawptr)
```

 

Prototype for user free function

```
@param mem the memory previously allocated through `b2AllocFcn`
```




##### Related Procedures With Parameters

* [SetAllocator](/vendor/box2d/#SetAllocator)

### [FrictionCallback ¶](#FrictionCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L44)

```
FrictionCallback :: proc "c" (frictionA: f32, userMaterialIdA: i32, frictionB: f32, userMaterialIdB: i32) -> f32
```

 

Optional friction mixing callback. This intentionally provides no context objects because this is called
from a worker thread.
@warning This function should not attempt to modify Box2D state or user application state.
@ingroup world




##### Related Procedures With Parameters

* [World\_SetFrictionCallback](/vendor/box2d/#World_SetFrictionCallback)

### [HexColor ¶](#HexColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1134)

```
HexColor :: enum i32 {
	AliceBlue            = 15792383, 
	AntiqueWhite         = 16444375, 
	Aqua                 = 65535, 
	Aquamarine           = 8388564, 
	Azure                = 15794175, 
	Beige                = 16119260, 
	Bisque               = 16770244, 
	Black                = 0, 
	BlanchedAlmond       = 16772045, 
	Blue                 = 255, 
	BlueViolet           = 9055202, 
	Brown                = 10824234, 
	Burlywood            = 14596231, 
	CadetBlue            = 6266528, 
	Chartreuse           = 8388352, 
	Chocolate            = 13789470, 
	Coral                = 16744272, 
	CornflowerBlue       = 6591981, 
	Cornsilk             = 16775388, 
	Crimson              = 14423100, 
	Cyan                 = 65535, 
	DarkBlue             = 139, 
	DarkCyan             = 35723, 
	DarkGoldenRod        = 12092939, 
	DarkGray             = 11119017, 
	DarkGreen            = 25600, 
	DarkKhaki            = 12433259, 
	DarkMagenta          = 9109643, 
	DarkOliveGreen       = 5597999, 
	DarkOrange           = 16747520, 
	DarkOrchid           = 10040012, 
	DarkRed              = 9109504, 
	DarkSalmon           = 15308410, 
	DarkSeaGreen         = 9419919, 
	DarkSlateBlue        = 4734347, 
	DarkSlateGray        = 3100495, 
	DarkTurquoise        = 52945, 
	DarkViolet           = 9699539, 
	DeepPink             = 16716947, 
	DeepSkyBlue          = 49151, 
	DimGray              = 6908265, 
	DodgerBlue           = 2003199, 
	FireBrick            = 11674146, 
	FloralWhite          = 16775920, 
	ForestGreen          = 2263842, 
	Fuchsia              = 16711935, 
	Gainsboro            = 14474460, 
	GhostWhite           = 16316671, 
	Gold                 = 16766720, 
	GoldenRod            = 14329120, 
	Gray                 = 8421504, 
	Green                = 32768, 
	GreenYellow          = 11403055, 
	HoneyDew             = 15794160, 
	HotPink              = 16738740, 
	IndianRed            = 13458524, 
	Indigo               = 4915330, 
	Ivory                = 16777200, 
	Khaki                = 15787660, 
	Lavender             = 15132410, 
	LavenderBlush        = 16773365, 
	LawnGreen            = 8190976, 
	LemonChiffon         = 16775885, 
	LightBlue            = 11393254, 
	LightCoral           = 15761536, 
	LightCyan            = 14745599, 
	LightGoldenRodYellow = 16448210, 
	LightGray            = 13882323, 
	LightGreen           = 9498256, 
	LightPink            = 16758465, 
	LightSalmon          = 16752762, 
	LightSeaGreen        = 2142890, 
	LightSkyBlue         = 8900346, 
	LightSlateGray       = 7833753, 
	LightSteelBlue       = 11584734, 
	LightYellow          = 16777184, 
	Lime                 = 65280, 
	LimeGreen            = 3329330, 
	Linen                = 16445670, 
	Magenta              = 16711935, 
	Maroon               = 8388608, 
	MediumAquaMarine     = 6737322, 
	MediumBlue           = 205, 
	MediumOrchid         = 12211667, 
	MediumPurple         = 9662683, 
	MediumSeaGreen       = 3978097, 
	MediumSlateBlue      = 8087790, 
	MediumSpringGreen    = 64154, 
	MediumTurquoise      = 4772300, 
	MediumVioletRed      = 13047173, 
	MidnightBlue         = 1644912, 
	MintCream            = 16121850, 
	MistyRose            = 16770273, 
	Moccasin             = 16770229, 
	NavajoWhite          = 16768685, 
	Navy                 = 128, 
	OldLace              = 16643558, 
	Olive                = 8421376, 
	OliveDrab            = 7048739, 
	Orange               = 16753920, 
	OrangeRed            = 16729344, 
	Orchid               = 14315734, 
	PaleGoldenRod        = 15657130, 
	PaleGreen            = 10025880, 
	PaleTurquoise        = 11529966, 
	PaleVioletRed        = 14381203, 
	PapayaWhip           = 16773077, 
	PeachPuff            = 16767673, 
	Peru                 = 13468991, 
	Pink                 = 16761035, 
	Plum                 = 14524637, 
	PowderBlue           = 11591910, 
	Purple               = 8388736, 
	RebeccaPurple        = 6697881, 
	Red                  = 16711680, 
	RosyBrown            = 12357519, 
	RoyalBlue            = 4286945, 
	SaddleBrown          = 9127187, 
	Salmon               = 16416882, 
	SandyBrown           = 16032864, 
	SeaGreen             = 3050327, 
	SeaShell             = 16774638, 
	Sienna               = 10506797, 
	Silver               = 12632256, 
	SkyBlue              = 8900331, 
	SlateBlue            = 6970061, 
	SlateGray            = 7372944, 
	Snow                 = 16775930, 
	SpringGreen          = 65407, 
	SteelBlue            = 4620980, 
	Tan                  = 13808780, 
	Teal                 = 32896, 
	Thistle              = 14204888, 
	Tomato               = 16737095, 
	Turquoise            = 4251856, 
	Violet               = 15631086, 
	Wheat                = 16113331, 
	White                = 16777215, 
	WhiteSmoke           = 16119285, 
	Yellow               = 16776960, 
	YellowGreen          = 10145074, 
	Box2DRed             = 14430514, 
	Box2DBlue            = 3190463, 
	Box2DGreen           = 9226532, 
	Box2DYellow          = 16772748, 
}
```

 

These colors are used for debug draw and mostly match the named SVG colors.
See https://www.rapidtables.com/web/color/index.html
https://johndecember.com/html/spec/colorsvg.html
https://upload.wikimedia.org/wikipedia/commons/2/2b/SVG\_Recognized\_color\_keyword\_names.svg

### [Hull ¶](#Hull) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L156)

```
Hull :: struct {
	// The final points of the hull
	points: [8][2]f32 `fmt:"v,count"`,
	// The number of points
	count:  i32,
}
```

 

A convex hull. Used to create convex polygons.

```
@warning Do not modify these values directly, instead use b2ComputeHull()
```




##### Related Procedures With Parameters

* [MakeOffsetPolygon](/vendor/box2d/#MakeOffsetPolygon)
* [MakeOffsetRoundedPolygon](/vendor/box2d/#MakeOffsetRoundedPolygon)
* [MakePolygon](/vendor/box2d/#MakePolygon)
* [ValidateHull](/vendor/box2d/#ValidateHull)



##### Related Procedures With Returns

* [ComputeHull](/vendor/box2d/#ComputeHull)

### [JointId ¶](#JointId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L52)

```
JointId :: struct {
	index1:     i32,
	world0:     u16,
	generation: u16,
}
```

 

/ Joint id references a joint instance. This should be treated as an opaque handle.




##### Related Procedures With Parameters

* [DestroyJoint](/vendor/box2d/#DestroyJoint)
* [DistanceJoint\_EnableLimit](/vendor/box2d/#DistanceJoint_EnableLimit)
* [DistanceJoint\_EnableMotor](/vendor/box2d/#DistanceJoint_EnableMotor)
* [DistanceJoint\_EnableSpring](/vendor/box2d/#DistanceJoint_EnableSpring)
* [DistanceJoint\_GetCurrentLength](/vendor/box2d/#DistanceJoint_GetCurrentLength)
* [DistanceJoint\_GetLength](/vendor/box2d/#DistanceJoint_GetLength)
* [DistanceJoint\_GetMaxLength](/vendor/box2d/#DistanceJoint_GetMaxLength)
* [DistanceJoint\_GetMaxMotorForce](/vendor/box2d/#DistanceJoint_GetMaxMotorForce)
* [DistanceJoint\_GetMinLength](/vendor/box2d/#DistanceJoint_GetMinLength)
* [DistanceJoint\_GetMotorForce](/vendor/box2d/#DistanceJoint_GetMotorForce)
* [DistanceJoint\_GetMotorSpeed](/vendor/box2d/#DistanceJoint_GetMotorSpeed)
* [DistanceJoint\_GetSpringDampingRatio](/vendor/box2d/#DistanceJoint_GetSpringDampingRatio)
* [DistanceJoint\_GetSpringHertz](/vendor/box2d/#DistanceJoint_GetSpringHertz)
* [DistanceJoint\_IsLimitEnabled](/vendor/box2d/#DistanceJoint_IsLimitEnabled)
* [DistanceJoint\_IsMotorEnabled](/vendor/box2d/#DistanceJoint_IsMotorEnabled)
* [DistanceJoint\_IsSpringEnabled](/vendor/box2d/#DistanceJoint_IsSpringEnabled)
* [DistanceJoint\_SetLength](/vendor/box2d/#DistanceJoint_SetLength)
* [DistanceJoint\_SetLengthRange](/vendor/box2d/#DistanceJoint_SetLengthRange)
* [DistanceJoint\_SetMaxMotorForce](/vendor/box2d/#DistanceJoint_SetMaxMotorForce)
* [DistanceJoint\_SetMotorSpeed](/vendor/box2d/#DistanceJoint_SetMotorSpeed)
* [DistanceJoint\_SetSpringDampingRatio](/vendor/box2d/#DistanceJoint_SetSpringDampingRatio)
* [DistanceJoint\_SetSpringHertz](/vendor/box2d/#DistanceJoint_SetSpringHertz)
* [Joint\_GetAngularSeparation](/vendor/box2d/#Joint_GetAngularSeparation)
* [Joint\_GetBodyA](/vendor/box2d/#Joint_GetBodyA)
* [Joint\_GetBodyB](/vendor/box2d/#Joint_GetBodyB)
* [Joint\_GetCollideConnected](/vendor/box2d/#Joint_GetCollideConnected)
* [Joint\_GetConstraintForce](/vendor/box2d/#Joint_GetConstraintForce)
* [Joint\_GetConstraintTorque](/vendor/box2d/#Joint_GetConstraintTorque)
* [Joint\_GetConstraintTuning](/vendor/box2d/#Joint_GetConstraintTuning)
* [Joint\_GetLinearSeparation](/vendor/box2d/#Joint_GetLinearSeparation)
* [Joint\_GetLocalAnchorA](/vendor/box2d/#Joint_GetLocalAnchorA)
* [Joint\_GetLocalAnchorB](/vendor/box2d/#Joint_GetLocalAnchorB)
* [Joint\_GetLocalAxisA](/vendor/box2d/#Joint_GetLocalAxisA)
* [Joint\_GetReferenceAngle](/vendor/box2d/#Joint_GetReferenceAngle)
* [Joint\_GetType](/vendor/box2d/#Joint_GetType)
* [Joint\_GetUserData](/vendor/box2d/#Joint_GetUserData)
* [Joint\_GetWorld](/vendor/box2d/#Joint_GetWorld)
* [Joint\_IsValid](/vendor/box2d/#Joint_IsValid)
* [Joint\_SetCollideConnected](/vendor/box2d/#Joint_SetCollideConnected)
* [Joint\_SetConstraintTuning](/vendor/box2d/#Joint_SetConstraintTuning)
* [Joint\_SetLocalAnchorA](/vendor/box2d/#Joint_SetLocalAnchorA)
* [Joint\_SetLocalAnchorB](/vendor/box2d/#Joint_SetLocalAnchorB)
* [Joint\_SetLocalAxisA](/vendor/box2d/#Joint_SetLocalAxisA)
* [Joint\_SetReferenceAngle](/vendor/box2d/#Joint_SetReferenceAngle)
* [Joint\_SetUserData](/vendor/box2d/#Joint_SetUserData)
* [Joint\_WakeBodies](/vendor/box2d/#Joint_WakeBodies)
* [MotorJoint\_GetAngularOffset](/vendor/box2d/#MotorJoint_GetAngularOffset)
* [MotorJoint\_GetCorrectionFactor](/vendor/box2d/#MotorJoint_GetCorrectionFactor)
* [MotorJoint\_GetLinearOffset](/vendor/box2d/#MotorJoint_GetLinearOffset)
* [MotorJoint\_GetMaxForce](/vendor/box2d/#MotorJoint_GetMaxForce)
* [MotorJoint\_GetMaxTorque](/vendor/box2d/#MotorJoint_GetMaxTorque)
* [MotorJoint\_SetAngularOffset](/vendor/box2d/#MotorJoint_SetAngularOffset)
* [MotorJoint\_SetCorrectionFactor](/vendor/box2d/#MotorJoint_SetCorrectionFactor)
* [MotorJoint\_SetLinearOffset](/vendor/box2d/#MotorJoint_SetLinearOffset)
* [MotorJoint\_SetMaxForce](/vendor/box2d/#MotorJoint_SetMaxForce)
* [MotorJoint\_SetMaxTorque](/vendor/box2d/#MotorJoint_SetMaxTorque)
* [MouseJoint\_GetMaxForce](/vendor/box2d/#MouseJoint_GetMaxForce)
* [MouseJoint\_GetSpringDampingRatio](/vendor/box2d/#MouseJoint_GetSpringDampingRatio)
* [MouseJoint\_GetSpringHertz](/vendor/box2d/#MouseJoint_GetSpringHertz)
* [MouseJoint\_GetTarget](/vendor/box2d/#MouseJoint_GetTarget)
* [MouseJoint\_SetMaxForce](/vendor/box2d/#MouseJoint_SetMaxForce)
* [MouseJoint\_SetSpringDampingRatio](/vendor/box2d/#MouseJoint_SetSpringDampingRatio)
* [MouseJoint\_SetSpringHertz](/vendor/box2d/#MouseJoint_SetSpringHertz)
* [MouseJoint\_SetTarget](/vendor/box2d/#MouseJoint_SetTarget)
* [PrismaticJoint\_EnableLimit](/vendor/box2d/#PrismaticJoint_EnableLimit)
* [PrismaticJoint\_EnableMotor](/vendor/box2d/#PrismaticJoint_EnableMotor)
* [PrismaticJoint\_EnableSpring](/vendor/box2d/#PrismaticJoint_EnableSpring)
* [PrismaticJoint\_GetLowerLimit](/vendor/box2d/#PrismaticJoint_GetLowerLimit)
* [PrismaticJoint\_GetMaxMotorForce](/vendor/box2d/#PrismaticJoint_GetMaxMotorForce)
* [PrismaticJoint\_GetMotorForce](/vendor/box2d/#PrismaticJoint_GetMotorForce)
* [PrismaticJoint\_GetMotorSpeed](/vendor/box2d/#PrismaticJoint_GetMotorSpeed)
* [PrismaticJoint\_GetSpeed](/vendor/box2d/#PrismaticJoint_GetSpeed)
* [PrismaticJoint\_GetSpringDampingRatio](/vendor/box2d/#PrismaticJoint_GetSpringDampingRatio)
* [PrismaticJoint\_GetSpringHertz](/vendor/box2d/#PrismaticJoint_GetSpringHertz)
* [PrismaticJoint\_GetTargetTranslation](/vendor/box2d/#PrismaticJoint_GetTargetTranslation)
* [PrismaticJoint\_GetTranslation](/vendor/box2d/#PrismaticJoint_GetTranslation)
* [PrismaticJoint\_GetUpperLimit](/vendor/box2d/#PrismaticJoint_GetUpperLimit)
* [PrismaticJoint\_IsLimitEnabled](/vendor/box2d/#PrismaticJoint_IsLimitEnabled)
* [PrismaticJoint\_IsMotorEnabled](/vendor/box2d/#PrismaticJoint_IsMotorEnabled)
* [PrismaticJoint\_IsSpringEnabled](/vendor/box2d/#PrismaticJoint_IsSpringEnabled)
* [PrismaticJoint\_SetLimits](/vendor/box2d/#PrismaticJoint_SetLimits)
* [PrismaticJoint\_SetMaxMotorForce](/vendor/box2d/#PrismaticJoint_SetMaxMotorForce)
* [PrismaticJoint\_SetMotorSpeed](/vendor/box2d/#PrismaticJoint_SetMotorSpeed)
* [PrismaticJoint\_SetSpringDampingRatio](/vendor/box2d/#PrismaticJoint_SetSpringDampingRatio)
* [PrismaticJoint\_SetSpringHertz](/vendor/box2d/#PrismaticJoint_SetSpringHertz)
* [PrismaticJoint\_SetTargetTranslation](/vendor/box2d/#PrismaticJoint_SetTargetTranslation)
* [RevoluteJoint\_EnableLimit](/vendor/box2d/#RevoluteJoint_EnableLimit)
* [RevoluteJoint\_EnableMotor](/vendor/box2d/#RevoluteJoint_EnableMotor)
* [RevoluteJoint\_EnableSpring](/vendor/box2d/#RevoluteJoint_EnableSpring)
* [RevoluteJoint\_GetAngle](/vendor/box2d/#RevoluteJoint_GetAngle)
* [RevoluteJoint\_GetLowerLimit](/vendor/box2d/#RevoluteJoint_GetLowerLimit)
* [RevoluteJoint\_GetMaxMotorTorque](/vendor/box2d/#RevoluteJoint_GetMaxMotorTorque)
* [RevoluteJoint\_GetMotorSpeed](/vendor/box2d/#RevoluteJoint_GetMotorSpeed)
* [RevoluteJoint\_GetMotorTorque](/vendor/box2d/#RevoluteJoint_GetMotorTorque)
* [RevoluteJoint\_GetSpringDampingRatio](/vendor/box2d/#RevoluteJoint_GetSpringDampingRatio)
* [RevoluteJoint\_GetSpringHertz](/vendor/box2d/#RevoluteJoint_GetSpringHertz)
* [RevoluteJoint\_GetTargetAngle](/vendor/box2d/#RevoluteJoint_GetTargetAngle)
* [RevoluteJoint\_GetUpperLimit](/vendor/box2d/#RevoluteJoint_GetUpperLimit)
* [RevoluteJoint\_IsLimitEnabled](/vendor/box2d/#RevoluteJoint_IsLimitEnabled)
* [RevoluteJoint\_IsMotorEnabled](/vendor/box2d/#RevoluteJoint_IsMotorEnabled)
* [RevoluteJoint\_IsSpringEnabled](/vendor/box2d/#RevoluteJoint_IsSpringEnabled)
* [RevoluteJoint\_SetLimits](/vendor/box2d/#RevoluteJoint_SetLimits)
* [RevoluteJoint\_SetMaxMotorTorque](/vendor/box2d/#RevoluteJoint_SetMaxMotorTorque)
* [RevoluteJoint\_SetMotorSpeed](/vendor/box2d/#RevoluteJoint_SetMotorSpeed)
* [RevoluteJoint\_SetSpringDampingRatio](/vendor/box2d/#RevoluteJoint_SetSpringDampingRatio)
* [RevoluteJoint\_SetSpringHertz](/vendor/box2d/#RevoluteJoint_SetSpringHertz)
* [RevoluteJoint\_SetTargetAngle](/vendor/box2d/#RevoluteJoint_SetTargetAngle)
* [WeldJoint\_GetAngularDampingRatio](/vendor/box2d/#WeldJoint_GetAngularDampingRatio)
* [WeldJoint\_GetAngularHertz](/vendor/box2d/#WeldJoint_GetAngularHertz)
* [WeldJoint\_GetLinearDampingRatio](/vendor/box2d/#WeldJoint_GetLinearDampingRatio)
* [WeldJoint\_GetLinearHertz](/vendor/box2d/#WeldJoint_GetLinearHertz)
* [WeldJoint\_SetAngularDampingRatio](/vendor/box2d/#WeldJoint_SetAngularDampingRatio)
* [WeldJoint\_SetAngularHertz](/vendor/box2d/#WeldJoint_SetAngularHertz)
* [WeldJoint\_SetLinearDampingRatio](/vendor/box2d/#WeldJoint_SetLinearDampingRatio)
* [WeldJoint\_SetLinearHertz](/vendor/box2d/#WeldJoint_SetLinearHertz)
* [WheelJoint\_EnableLimit](/vendor/box2d/#WheelJoint_EnableLimit)
* [WheelJoint\_EnableMotor](/vendor/box2d/#WheelJoint_EnableMotor)
* [WheelJoint\_EnableSpring](/vendor/box2d/#WheelJoint_EnableSpring)
* [WheelJoint\_GetLowerLimit](/vendor/box2d/#WheelJoint_GetLowerLimit)
* [WheelJoint\_GetMaxMotorTorque](/vendor/box2d/#WheelJoint_GetMaxMotorTorque)
* [WheelJoint\_GetMotorSpeed](/vendor/box2d/#WheelJoint_GetMotorSpeed)
* [WheelJoint\_GetMotorTorque](/vendor/box2d/#WheelJoint_GetMotorTorque)
* [WheelJoint\_GetSpringDampingRatio](/vendor/box2d/#WheelJoint_GetSpringDampingRatio)
* [WheelJoint\_GetSpringHertz](/vendor/box2d/#WheelJoint_GetSpringHertz)
* [WheelJoint\_GetUpperLimit](/vendor/box2d/#WheelJoint_GetUpperLimit)
* [WheelJoint\_IsLimitEnabled](/vendor/box2d/#WheelJoint_IsLimitEnabled)
* [WheelJoint\_IsMotorEnabled](/vendor/box2d/#WheelJoint_IsMotorEnabled)
* [WheelJoint\_IsSpringEnabled](/vendor/box2d/#WheelJoint_IsSpringEnabled)
* [WheelJoint\_SetLimits](/vendor/box2d/#WheelJoint_SetLimits)
* [WheelJoint\_SetMaxMotorTorque](/vendor/box2d/#WheelJoint_SetMaxMotorTorque)
* [WheelJoint\_SetMotorSpeed](/vendor/box2d/#WheelJoint_SetMotorSpeed)
* [WheelJoint\_SetSpringDampingRatio](/vendor/box2d/#WheelJoint_SetSpringDampingRatio)
* [WheelJoint\_SetSpringHertz](/vendor/box2d/#WheelJoint_SetSpringHertz)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [CreateDistanceJoint](/vendor/box2d/#CreateDistanceJoint)
* [CreateFilterJoint](/vendor/box2d/#CreateFilterJoint)
* [CreateMotorJoint](/vendor/box2d/#CreateMotorJoint)
* [CreateMouseJoint](/vendor/box2d/#CreateMouseJoint)
* [CreatePrismaticJoint](/vendor/box2d/#CreatePrismaticJoint)
* [CreateRevoluteJoint](/vendor/box2d/#CreateRevoluteJoint)
* [CreateWeldJoint](/vendor/box2d/#CreateWeldJoint)
* [CreateWheelJoint](/vendor/box2d/#CreateWheelJoint)

##### Related Constants

* [nullJointId](/vendor/box2d/#nullJointId)

### [JointType ¶](#JointType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L471)

```
JointType :: enum i32 {
	distanceJoint, 
	filterJoint, 
	motorJoint, 
	mouseJoint, 
	prismaticJoint, 
	revoluteJoint, 
	weldJoint, 
	wheelJoint, 
}
```

 

Joint type enumeration

This is useful because all joint types use b2JointId and sometimes you
want to get the type of a joint.
@ingroup joint




##### Related Procedures With Returns

* [Joint\_GetType](/vendor/box2d/#Joint_GetType)

### [Manifold ¶](#Manifold) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L351)

```
Manifold :: struct {
	// The unit normal vector in world space, points from shape A to bodyB
	normal:         [2]f32,
	// Angular impulse applied for rolling resistance. N * m * s = kg * m^2 / s
	rollingImpulse: f32,
	// The manifold points, up to two are possible in 2D
	points:         [2]ManifoldPoint,
	// The number of contacts points, will be 0, 1, or 2
	pointCount:     i32,
}
```

 

A contact manifold describes the contact points between colliding shapes.
@note Box2D uses speculative collision so some contact points may be separated.




##### Related Procedures With Returns

* [CollideCapsuleAndCircle](/vendor/box2d/#CollideCapsuleAndCircle)
* [CollideCapsules](/vendor/box2d/#CollideCapsules)
* [CollideChainSegmentAndCapsule](/vendor/box2d/#CollideChainSegmentAndCapsule)
* [CollideChainSegmentAndCircle](/vendor/box2d/#CollideChainSegmentAndCircle)
* [CollideChainSegmentAndPolygon](/vendor/box2d/#CollideChainSegmentAndPolygon)
* [CollideCircles](/vendor/box2d/#CollideCircles)
* [CollidePolygonAndCapsule](/vendor/box2d/#CollidePolygonAndCapsule)
* [CollidePolygonAndCircle](/vendor/box2d/#CollidePolygonAndCircle)
* [CollidePolygons](/vendor/box2d/#CollidePolygons)
* [CollideSegmentAndCapsule](/vendor/box2d/#CollideSegmentAndCapsule)
* [CollideSegmentAndCircle](/vendor/box2d/#CollideSegmentAndCircle)
* [CollideSegmentAndPolygon](/vendor/box2d/#CollideSegmentAndPolygon)

### [ManifoldPoint ¶](#ManifoldPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L311)

```
ManifoldPoint :: struct {
	// Location of the contact point in world space. Subject to precision loss at large coordinates.
	// 	@note Should only be used for debugging.
	point:              [2]f32,
	// Location of the contact point relative to shapeA's origin in world space
	// 	@note When used internally to the Box2D solver, this is relative to the body center of mass.
	anchorA:            [2]f32,
	// Location of the contact point relative to shapeB's origin in world space
	// @note When used internally to the Box2D solver, this is relative to the body center of mass.
	anchorB:            [2]f32,
	// The separation of the contact point, negative if penetrating
	separation:         f32,
	// The total normal impulse applied across sub-stepping and restitution. This is important
	// to identify speculative contact points that had an interaction in the time step.
	totalNormalImpulse: f32,
	// The friction impulse
	tangentImpulse:     f32,
	// The maximum normal impulse applied during sub-stepping
	// 	todo not sure this is needed
	maxNormalImpulse:   f32,
	// Relative normal velocity pre-solve. Used for hit events. If the normal impulse is
	// zero then there was no hit. Negative means shapes are approaching.
	normalVelocity:     f32,
	// Uniquely identifies a contact point between two shapes
	id:                 u16,
	// Did this contact point exist the previous step?
	persisted:          bool,
}
```

 

A manifold point is a contact point belonging to a contact manifold.
It holds details related to the geometry and dynamics of the contact points.
Box2D uses speculative collision so some contact points may be separated.
You may use the totalNormalImpulse to determine if there was an interaction during
the time step.

### [MassData ¶](#MassData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L71)

```
MassData :: struct {
	// The mass of the shape, usually in kilograms.
	mass:              f32,
	// The position of the shape's centroid relative to the shape's origin.
	center:            [2]f32,
	// The rotational inertia of the shape about the local origin.
	rotationalInertia: f32,
}
```

 

This holds the mass data computed for a shape.




##### Related Procedures With Parameters

* [Body\_SetMassData](/vendor/box2d/#Body_SetMassData)



##### Related Procedures With Returns

* [Body\_GetMassData](/vendor/box2d/#Body_GetMassData)
* [ComputeCapsuleMass](/vendor/box2d/#ComputeCapsuleMass)
* [ComputeCircleMass](/vendor/box2d/#ComputeCircleMass)
* [ComputePolygonMass](/vendor/box2d/#ComputePolygonMass)
* [Shape\_GetMassData](/vendor/box2d/#Shape_GetMassData)

### [Mat22 ¶](#Mat22) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L27)

```
Mat22 :: matrix[2, 2]f32
```

##### Related Procedures With Parameters

* [GetInverse22](/vendor/box2d/#GetInverse22)
* [MulMV](/vendor/box2d/#MulMV)
* [Solve22](/vendor/box2d/#Solve22)

##### Related Constants

* [Mat22\_zero](/vendor/box2d/#Mat22_zero)

### [MotorJointDef ¶](#MotorJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L548)

```
MotorJointDef :: struct {
	// The first attached body
	bodyIdA:          BodyId,
	// The second attached body
	bodyIdB:          BodyId,
	// Position of bodyB minus the position of bodyA, in bodyA's frame
	linearOffset:     [2]f32,
	// The bodyB angle minus bodyA angle in radians
	angularOffset:    f32,
	// The maximum motor force in newtons
	maxForce:         f32,
	// The maximum motor torque in newton-meters
	maxTorque:        f32,
	// Position correction factor in the range [0,1]
	correctionFactor: f32,
	// Set this flag to true if the attached bodies should collide
	collideConnected: bool,
	// User data pointer
	userData:         rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:    i32,
}
```

 

A motor joint is used to control the relative motion between two bodies

A typical usage is to control the movement of a dynamic body with respect to the ground.
@ingroup motor\_joint




##### Related Procedures With Parameters

* [CreateMotorJoint](/vendor/box2d/#CreateMotorJoint)



##### Related Procedures With Returns

* [DefaultMotorJointDef](/vendor/box2d/#DefaultMotorJointDef)

### [MouseJointDef ¶](#MouseJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L586)

```
MouseJointDef :: struct {
	// The first attached body. This is assumed to be static.
	bodyIdA:          BodyId,
	// The second attached body.
	bodyIdB:          BodyId,
	// The initial target point in world space
	target:           [2]f32,
	// Stiffness in hertz
	hertz:            f32,
	// Damping ratio, non-dimensional
	dampingRatio:     f32,
	// Maximum force, typically in newtons
	maxForce:         f32,
	// Set this flag to true if the attached bodies should collide.
	collideConnected: bool,
	// User data pointer
	userData:         rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:    i32,
}
```

 

A mouse joint is used to make a point on a body track a specified world point.

This a soft constraint and allows the constraint to stretch without
applying huge forces. This also applies rotation constraint heuristic to improve control.
@ingroup mouse\_joint




##### Related Procedures With Parameters

* [CreateMouseJoint](/vendor/box2d/#CreateMouseJoint)



##### Related Procedures With Returns

* [DefaultMouseJointDef](/vendor/box2d/#DefaultMouseJointDef)

### [OverlapResultFcn ¶](#OverlapResultFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1106)

```
OverlapResultFcn :: proc "c" (shapeId: ShapeId, ctx: rawptr) -> bool
```

 

Prototype callback for overlap queries.
Called for each shape found in the query.
@see b2World\_QueryAABB
@return false to terminate the query.

```
@ingroup world
```




##### Related Procedures With Parameters

* [World\_OverlapAABB](/vendor/box2d/#World_OverlapAABB)
* [World\_OverlapShape](/vendor/box2d/#World_OverlapShape)

### [Plane ¶](#Plane) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L34)

```
Plane :: struct {
	normal: [2]f32,
	offset: f32,
}
```

 

separation = dot(normal, point) - offset




##### Related Procedures With Parameters

* [IsValidPlane](/vendor/box2d/#IsValidPlane)
* [PlaneSeparation](/vendor/box2d/#PlaneSeparation)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*

### [PlaneResult ¶](#PlaneResult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L458)

```
PlaneResult :: struct {
	// The collision plane between the mover and convex shape
	plane: Plane,
	// The collision point on the shape.
	point: [2]f32,
	// Did the collision register a hit? If not this plane should be ignored.
	hit:   bool,
}
```

 

/ These are the collision planes returned from b2World\_CollideMover

### [PlaneResultFcn ¶](#PlaneResultFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1128)

```
PlaneResultFcn :: proc "c" (shapeId: ShapeId, plane: ^PlaneResult, ctx: rawptr) -> bool
```

 

Used to collect collision planes for character movers.
Return true to continue gathering planes.




##### Related Procedures With Parameters

* [World\_CollideMover](/vendor/box2d/#World_CollideMover)

### [PlaneSolverResult ¶](#PlaneSolverResult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L487)

```
PlaneSolverResult :: struct {
	// The translation of the mover
	translation:    [2]f32,
	// The number of iterations used by the plane solver. For diagnostics.
	iterationCount: i32,
}
```

 

Result returned by b2SolvePlanes




##### Related Procedures With Returns

* [SolvePlanes](/vendor/box2d/#SolvePlanes)

### [Polygon ¶](#Polygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L110)

```
Polygon :: struct {
	// The polygon vertices
	vertices: [8][2]f32 `fmt:"v,count"`,
	// The outward normal vectors of the polygon sides
	normals:  [8][2]f32 `fmt:"v,count"`,
	// The centroid of the polygon
	centroid: [2]f32,
	// The external radius for rounded polygons
	radius:   f32,
	// The number of polygon vertices
	count:    i32,
}
```

 

A solid convex polygon. It is assumed that the interior of the polygon is to
the left of each edge.
Polygons have a maximum number of vertices equal to MAX\_POLYGON\_VERTICES.
In most cases you should not need many vertices for a convex polygon.
@warning DO NOT fill this out manually, instead use a helper function like
b2MakePolygon or b2MakeBox.




##### Related Procedures With Parameters

* [CollideChainSegmentAndPolygon](/vendor/box2d/#CollideChainSegmentAndPolygon)
* [CollidePolygonAndCapsule](/vendor/box2d/#CollidePolygonAndCapsule)
* [CollidePolygonAndCircle](/vendor/box2d/#CollidePolygonAndCircle)
* [CollidePolygons](/vendor/box2d/#CollidePolygons)
* [CollideSegmentAndPolygon](/vendor/box2d/#CollideSegmentAndPolygon)
* [ComputePolygonAABB](/vendor/box2d/#ComputePolygonAABB)
* [ComputePolygonMass](/vendor/box2d/#ComputePolygonMass)
* [CreatePolygonShape](/vendor/box2d/#CreatePolygonShape)
* [PointInPolygon](/vendor/box2d/#PointInPolygon)
* [RayCastPolygon](/vendor/box2d/#RayCastPolygon)
* [ShapeCastPolygon](/vendor/box2d/#ShapeCastPolygon)
* [Shape\_SetPolygon](/vendor/box2d/#Shape_SetPolygon)
* [TransformPolygon](/vendor/box2d/#TransformPolygon)



##### Related Procedures With Returns

* [MakeBox](/vendor/box2d/#MakeBox)
* [MakeOffsetBox](/vendor/box2d/#MakeOffsetBox)
* [MakeOffsetPolygon](/vendor/box2d/#MakeOffsetPolygon)
* [MakeOffsetRoundedBox](/vendor/box2d/#MakeOffsetRoundedBox)
* [MakeOffsetRoundedPolygon](/vendor/box2d/#MakeOffsetRoundedPolygon)
* [MakePolygon](/vendor/box2d/#MakePolygon)
* [MakeRoundedBox](/vendor/box2d/#MakeRoundedBox)
* [MakeSquare](/vendor/box2d/#MakeSquare)
* [Shape\_GetPolygon](/vendor/box2d/#Shape_GetPolygon)

### [PreSolveFcn ¶](#PreSolveFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L1099)

```
PreSolveFcn :: proc "c" (shapeIdA, shapeIdB: ShapeId, manifold: ^Manifold, ctx: rawptr) -> bool
```

 

Prototype for a pre-solve callback.
This is called after a contact is updated. This allows you to inspect a
contact before it goes to the solver. If you are careful, you can modify the
contact manifold (e.g. modify the normal).
Notes:

```
- this function must be thread-safe
- this is only called if the shape has enabled pre-solve events
```

this is called only for awake dynamic bodies
this is not called for sensors
the supplied manifold has impulse values from the previous step

```
Return false if you want to disable the contact this step
@warning Do not attempt to modify the world inside this callback
@ingroup world
```




##### Related Procedures With Parameters

* [World\_SetPreSolveCallback](/vendor/box2d/#World_SetPreSolveCallback)

### [PrismaticJointDef ¶](#PrismaticJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L639)

```
PrismaticJointDef :: struct {
	// The first attached body
	bodyIdA:           BodyId,
	// The second attached body
	bodyIdB:           BodyId,
	// The local anchor point relative to bodyA's origin
	localAnchorA:      [2]f32,
	// The local anchor point relative to bodyB's origin
	localAnchorB:      [2]f32,
	// The local translation unit axis in bodyA
	localAxisA:        [2]f32,
	// The constrained angle between the bodies: bodyB_angle - bodyA_angle
	referenceAngle:    f32,
	// The target translation for the joint in meters. The spring-damper will drive
	// to this translation.
	targetTranslation: f32,
	// Enable a linear spring along the prismatic joint axis
	enableSpring:      bool,
	// The spring stiffness Hertz, cycles per second
	hertz:             f32,
	// The spring damping ratio, non-dimensional
	dampingRatio:      f32,
	// Enable/disable the joint limit
	enableLimit:       bool,
	// The lower translation limit
	lowerTranslation:  f32,
	// The upper translation limit
	upperTranslation:  f32,
	// Enable/disable the joint motor
	enableMotor:       bool,
	// The maximum motor force, typically in newtons
	maxMotorForce:     f32,
	// The desired motor speed, typically in meters per second
	motorSpeed:        f32,
	// Set this flag to true if the attached bodies should collide
	collideConnected:  bool,
	// User data pointer
	userData:          rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:     i32,
}
```

 

Prismatic joint definition

This requires defining a line of motion using an axis and an anchor point.
The definition uses local anchor points and a local axis so that the initial
configuration can violate the constraint slightly. The joint translation is zero
when the local anchor points coincide in world space.
@ingroup prismatic\_joint




##### Related Procedures With Parameters

* [CreatePrismaticJoint](/vendor/box2d/#CreatePrismaticJoint)



##### Related Procedures With Returns

* [DefaultPrismaticJointDef](/vendor/box2d/#DefaultPrismaticJointDef)

### [Profile ¶](#Profile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L425)

```
Profile :: struct {
	step:                f32,
	pairs:               f32,
	collide:             f32,
	solve:               f32,
	mergeIslands:        f32,
	prepareStages:       f32,
	solveConstraints:    f32,
	prepareConstraints:  f32,
	integrateVelocities: f32,
	warmStart:           f32,
	solveImpulses:       f32,
	integratePositions:  f32,
	relaxImpulses:       f32,
	applyRestitution:    f32,
	storeImpulses:       f32,
	splitIslands:        f32,
	transforms:          f32,
	hitEvents:           f32,
	refit:               f32,
	bullets:             f32,
	sleepIslands:        f32,
	sensors:             f32,
}
```

 

! @cond
Profiling data. Times are in milliseconds.




##### Related Procedures With Returns

* [World\_GetProfile](/vendor/box2d/#World_GetProfile)

### [QueryFilter ¶](#QueryFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L268)

```
QueryFilter :: struct {
	// The collision category bits of this query. Normally you would just set one bit.
	categoryBits: u64,
	// The collision mask bits. This states the shape categories that this
	// query would accept for collision.
	maskBits:     u64,
}
```

 

The query filter is used to filter collisions between queries and shapes. For example,

```
you may want a ray-cast representing a projectile to hit players and the static environment
but not debris.
```

@ingroup shape




##### Related Procedures With Parameters

* [World\_CastMover](/vendor/box2d/#World_CastMover)
* [World\_CastRay](/vendor/box2d/#World_CastRay)
* [World\_CastRayClosest](/vendor/box2d/#World_CastRayClosest)
* [World\_CastShape](/vendor/box2d/#World_CastShape)
* [World\_CollideMover](/vendor/box2d/#World_CollideMover)
* [World\_OverlapAABB](/vendor/box2d/#World_OverlapAABB)
* [World\_OverlapShape](/vendor/box2d/#World_OverlapShape)



##### Related Procedures With Returns

* [DefaultQueryFilter](/vendor/box2d/#DefaultQueryFilter)

### [RayCastInput ¶](#RayCastInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L11)

```
RayCastInput :: struct {
	// Start point of the ray cast
	origin:      [2]f32,
	// Translation of the ray cast
	translation: [2]f32,
	// The maximum fraction of the translation to consider, typically 1
	maxFraction: f32,
}
```

 

Low level ray cast input data




##### Related Procedures With Parameters

* [DynamicTree\_RayCast](/vendor/box2d/#DynamicTree_RayCast)
* [IsValidRay](/vendor/box2d/#IsValidRay)
* [RayCastCapsule](/vendor/box2d/#RayCastCapsule)
* [RayCastCircle](/vendor/box2d/#RayCastCircle)
* [RayCastPolygon](/vendor/box2d/#RayCastPolygon)
* [RayCastSegment](/vendor/box2d/#RayCastSegment)
* [Shape\_RayCast](/vendor/box2d/#Shape_RayCast)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*

### [RayResult ¶](#RayResult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L55)

```
RayResult :: struct {
	shapeId:    ShapeId,
	point:      [2]f32,
	normal:     [2]f32,
	fraction:   f32,
	nodeVisits: i32,
	leafVisits: i32,
	hit:        bool,
}
```

 

Result from b2World\_RayCastClosest
If there is initial overlap the fraction and normal will be zero while the point is an arbitrary point in the overlap region.
@ingroup world




##### Related Procedures With Returns

* [World\_CastRayClosest](/vendor/box2d/#World_CastRayClosest)

### [RestitutionCallback ¶](#RestitutionCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L50)

```
RestitutionCallback :: proc "c" (restitutionA: f32, userMaterialIdA: i32, restitutionB: f32, userMaterialIdB: i32) -> f32
```

 

Optional restitution mixing callback. This intentionally provides no context objects because this is called
from a worker thread.
@warning This function should not attempt to modify Box2D state or user application state.
@ingroup world




##### Related Procedures With Parameters

* [World\_SetRestitutionCallback](/vendor/box2d/#World_SetRestitutionCallback)

### [RevoluteJointDef ¶](#RevoluteJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L712)

```
RevoluteJointDef :: struct {
	// The first attached body
	bodyIdA:          BodyId,
	// The second attached body
	bodyIdB:          BodyId,
	// The local anchor point relative to bodyA's origin
	localAnchorA:     [2]f32,
	// The local anchor point relative to bodyB's origin
	localAnchorB:     [2]f32,
	// The bodyB angle minus bodyA angle in the reference state (radians).
	// This defines the zero angle for the joint limit.
	referenceAngle:   f32,
	// The target angle for the joint in radians. The spring-damper will drive
	// to this angle.
	targetAngle:      f32,
	// Enable a rotational spring on the revolute hinge axis
	enableSpring:     bool,
	// The spring stiffness Hertz, cycles per second
	hertz:            f32,
	// The spring damping ratio, non-dimensional
	dampingRatio:     f32,
	// A flag to enable joint limits
	enableLimit:      bool,
	// The lower angle for the joint limit in radians. Minimum of -0.99*pi radians.
	lowerAngle:       f32,
	// The upper angle for the joint limit in radians. Maximum of 0.99*pi radians.
	upperAngle:       f32,
	// A flag to enable the joint motor
	enableMotor:      bool,
	// The maximum motor torque, typically in newton-meters
	maxMotorTorque:   f32,
	// The desired motor speed in radians per second
	motorSpeed:       f32,
	// Scale the debug draw
	drawSize:         f32,
	// Set this flag to true if the attached bodies should collide
	collideConnected: bool,
	// User data pointer
	userData:         rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:    i32,
}
```

 

Revolute joint definition

This requires defining an anchor point where the bodies are joined.
The definition uses local anchor points so that the
initial configuration can violate the constraint slightly. You also need to
specify the initial relative angle for joint limits. This helps when saving
and loading a game.
The local anchor points are measured from the body's origin
rather than the center of mass because:
1. you might not know where the center of mass will be
2. if you add/remove shapes from a body and recompute the mass, the joints will be broken
@ingroup revolute\_joint




##### Related Procedures With Parameters

* [CreateRevoluteJoint](/vendor/box2d/#CreateRevoluteJoint)



##### Related Procedures With Returns

* [DefaultRevoluteJointDef](/vendor/box2d/#DefaultRevoluteJointDef)

### [Rot ¶](#Rot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L18)

```
Rot :: struct {
	c: f32,
	s: f32,
}
```

##### Related Procedures With Parameters

* [Body\_SetTransform](/vendor/box2d/#Body_SetTransform)
* [ComputeAngularVelocity](/vendor/box2d/#ComputeAngularVelocity)
* [IntegrateRotation](/vendor/box2d/#IntegrateRotation)
* [InvMulRot](/vendor/box2d/#InvMulRot)
* [InvRotateVector](/vendor/box2d/#InvRotateVector)
* [IsNormalizedRot](/vendor/box2d/#IsNormalizedRot)
* [IsValidRotation](/vendor/box2d/#IsValidRotation)
* [MakeOffsetBox](/vendor/box2d/#MakeOffsetBox)
* [MakeOffsetPolygon](/vendor/box2d/#MakeOffsetPolygon)
* [MakeOffsetProxy](/vendor/box2d/#MakeOffsetProxy)
* [MakeOffsetRoundedBox](/vendor/box2d/#MakeOffsetRoundedBox)
* [MakeOffsetRoundedPolygon](/vendor/box2d/#MakeOffsetRoundedPolygon)
* [MulRot](/vendor/box2d/#MulRot)
* [NLerp](/vendor/box2d/#NLerp)
* [NormalizeRot](/vendor/box2d/#NormalizeRot)
* [RelativeAngle](/vendor/box2d/#RelativeAngle)
* [Rot\_GetAngle](/vendor/box2d/#Rot_GetAngle)
* [Rot\_GetXAxis](/vendor/box2d/#Rot_GetXAxis)
* [Rot\_GetYAxis](/vendor/box2d/#Rot_GetYAxis)
* [RotateVector](/vendor/box2d/#RotateVector)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [Body\_GetRotation](/vendor/box2d/#Body_GetRotation)
* [ComputeRotationBetweenUnitVectors](/vendor/box2d/#ComputeRotationBetweenUnitVectors)
* [MakeRot](/vendor/box2d/#MakeRot)

##### Related Constants

* [Rot\_identity](/vendor/box2d/#Rot_identity)

### [Segment ¶](#Segment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L128)

```
Segment :: struct {
	// The first point
	point1: [2]f32,
	// The second point
	point2: [2]f32,
}
```

 

A line segment with two-sided collision.




##### Related Procedures With Parameters

* [CollideSegmentAndCapsule](/vendor/box2d/#CollideSegmentAndCapsule)
* [CollideSegmentAndCircle](/vendor/box2d/#CollideSegmentAndCircle)
* [CollideSegmentAndPolygon](/vendor/box2d/#CollideSegmentAndPolygon)
* [ComputeSegmentAABB](/vendor/box2d/#ComputeSegmentAABB)
* [CreateSegmentShape](/vendor/box2d/#CreateSegmentShape)
* [RayCastSegment](/vendor/box2d/#RayCastSegment)
* [ShapeCastSegment](/vendor/box2d/#ShapeCastSegment)
* [Shape\_SetSegment](/vendor/box2d/#Shape_SetSegment)



##### Related Procedures With Returns

* [Shape\_GetSegment](/vendor/box2d/#Shape_GetSegment)

### [SegmentDistanceResult ¶](#SegmentDistanceResult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L174)

```
SegmentDistanceResult :: struct {
	// The closest point on the first segment
	closest1:        [2]f32,
	// The closest point on the second segment
	closest2:        [2]f32,
	// The barycentric coordinate on the first segment
	fraction1:       f32,
	// The barycentric coordinate on the second segment
	fraction2:       f32,
	// The squared distance between the closest points
	distanceSquared: f32,
}
```

 

Result of computing the distance between two line segments




##### Related Procedures With Returns

* [SegmentDistance](/vendor/box2d/#SegmentDistance)

### [SensorBeginTouchEvent ¶](#SensorBeginTouchEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L919)

```
SensorBeginTouchEvent :: struct {
	// The id of the sensor shape
	sensorShapeId:  ShapeId,
	// The id of the dynamic shape that began touching the sensor shape
	visitorShapeId: ShapeId,
}
```

 

A begin touch event is generated when a shape starts to overlap a sensor shape.

### [SensorEndTouchEvent ¶](#SensorEndTouchEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L931)

```
SensorEndTouchEvent :: struct {
	// The id of the sensor shape
	sensorShapeId:  ShapeId,
	// The id of the dynamic shape that began touching the sensor shape
	visitorShapeId: ShapeId,
}
```

 

An end touch event is generated when a shape stops overlapping a sensor shape.
These include things like setting the transform, destroying a body or shape, or changing
a filter. You will also get an end event if the sensor or visitor are destroyed.
Therefore you should always confirm the shape id is valid using b2Shape\_IsValid.

### [SensorEvents ¶](#SensorEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L946)

```
SensorEvents :: struct {
	// Array of sensor begin touch events
	beginEvents: [^]SensorBeginTouchEvent `fmt:"v,beginCount"`,
	// Array of sensor end touch events
	endEvents:   [^]SensorEndTouchEvent `fmt:"v,endCount"`,
	// The number of begin touch events
	beginCount:  i32,
	// The number of end touch events
	endCount:    i32,
}
```

 

Sensor events are buffered in the Box2D world and are available

```
as begin/end overlap event arrays after the time step is complete.
Note: these may become invalid if bodies and/or shapes are destroyed
```




##### Related Procedures With Returns

* [World\_GetSensorEvents](/vendor/box2d/#World_GetSensorEvents)

### [ShapeCastInput ¶](#ShapeCastInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L38)

```
ShapeCastInput :: struct {
	// A generic shape
	proxy:       ShapeProxy,
	// The translation of the shape cast
	translation: [2]f32,
	// The maximum fraction of the translation to consider, typically 1
	maxFraction: f32,
	// Allow shape cast to encroach when initially touching. This only works if the radius is greater than zero.
	canEncroach: bool,
}
```

 

Low level shape cast input in generic form. This allows casting an arbitrary point
cloud wrap with a radius. For example, a circle is a single point with a non-zero radius.
A capsule is two points with a non-zero radius. A box is four points with a zero radius.




##### Related Procedures With Parameters

* [DynamicTree\_ShapeCast](/vendor/box2d/#DynamicTree_ShapeCast)
* [ShapeCastCapsule](/vendor/box2d/#ShapeCastCapsule)
* [ShapeCastCircle](/vendor/box2d/#ShapeCastCircle)
* [ShapeCastPolygon](/vendor/box2d/#ShapeCastPolygon)
* [ShapeCastSegment](/vendor/box2d/#ShapeCastSegment)

### [ShapeCastPairInput ¶](#ShapeCastPairInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L253)

```
ShapeCastPairInput :: struct {
	proxyA:       ShapeProxy,
	// The proxy for shape A
	proxyB:       ShapeProxy,
	// The proxy for shape B
	transformA:   Transform,
	// The world transform for shape A
	transformB:   Transform,
	// The world transform for shape B
	translationB: [2]f32,
	// The translation of shape B
	maxFraction:  f32,
	// The fraction of the translation to consider, typically 1
	canEncroach:  bool,
}
```

 

Input parameters for b2ShapeCast




##### Related Procedures With Parameters

* [ShapeCast](/vendor/box2d/#ShapeCast)

### [ShapeDef ¶](#ShapeDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L329)

```
ShapeDef :: struct {
	// Use this to store application specific shape data.
	userData:              rawptr,
	// The surface material for this shape.
	material:              SurfaceMaterial,
	// The density, usually in kg/m^2.
	// This is not part of the surface material because this is for the interior, which may have
	// other considerations, such as being hollow. For example a wood barrel may be hollow or full of water.
	density:               f32,
	// Collision filtering data.
	filter:                Filter,
	// A sensor shape generates overlap events but never generates a collision response.
	// Sensors do not have continuous collision. Instead, use a ray or shape cast for those scenarios.
	// Sensors still contribute to the body mass if they have non-zero density.
	// @note Sensor events are disabled by default.
	// @see enableSensorEvents
	isSensor:              bool,
	// Enable sensor events for this shape. This applies to sensors and non-sensors. False by default, even for sensors.
	enableSensorEvents:    bool,
	// Enable contact events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors. False by default.
	enableContactEvents:   bool,
	// Enable hit events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors. False by default.
	enableHitEvents:       bool,
	// Enable pre-solve contact events for this shape. Only applies to dynamic bodies. These are expensive
	// 	and must be carefully handled due to threading. Ignored for sensors.
	enablePreSolveEvents:  bool,
	// When shapes are created they will scan the environment for collision the next time step. This can significantly slow down
	// static body creation when there are many static shapes.
	// This is flag is ignored for dynamic and kinematic shapes which always invoke contact creation.
	invokeContactCreation: bool,
	// Should the body update the mass properties when this shape is created. Default is true.
	updateBodyMass:        bool,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:         i32,
}
```

 

Used to create a shape.
This is a temporary object used to bundle shape creation parameters. You may use

```
the same shape definition to create multiple shapes.
```

Must be initialized using b2DefaultShapeDef().
@ingroup shape




##### Related Procedures With Parameters

* [CreateCapsuleShape](/vendor/box2d/#CreateCapsuleShape)
* [CreateCircleShape](/vendor/box2d/#CreateCircleShape)
* [CreatePolygonShape](/vendor/box2d/#CreatePolygonShape)
* [CreateSegmentShape](/vendor/box2d/#CreateSegmentShape)



##### Related Procedures With Returns

* [DefaultShapeDef](/vendor/box2d/#DefaultShapeDef)

### [ShapeId ¶](#ShapeId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L38)

```
ShapeId :: struct {
	index1:     i32,
	world0:     u16,
	generation: u16,
}
```

 

/ Shape id references a shape instance. This should be treated as an opaque handle.




##### Related Procedures With Parameters

* [Chain\_GetSegments](/vendor/box2d/#Chain_GetSegments)
* [DestroyShape](/vendor/box2d/#DestroyShape)
* [Shape\_AreContactEventsEnabled](/vendor/box2d/#Shape_AreContactEventsEnabled)
* [Shape\_AreHitEventsEnabled](/vendor/box2d/#Shape_AreHitEventsEnabled)
* [Shape\_ArePreSolveEventsEnabled](/vendor/box2d/#Shape_ArePreSolveEventsEnabled)
* [Shape\_AreSensorEventsEnabled](/vendor/box2d/#Shape_AreSensorEventsEnabled)
* [Shape\_EnableContactEvents](/vendor/box2d/#Shape_EnableContactEvents)
* [Shape\_EnableHitEvents](/vendor/box2d/#Shape_EnableHitEvents)
* [Shape\_EnablePreSolveEvents](/vendor/box2d/#Shape_EnablePreSolveEvents)
* [Shape\_EnableSensorEvents](/vendor/box2d/#Shape_EnableSensorEvents)
* [Shape\_GetAABB](/vendor/box2d/#Shape_GetAABB)
* [Shape\_GetBody](/vendor/box2d/#Shape_GetBody)
* [Shape\_GetCapsule](/vendor/box2d/#Shape_GetCapsule)
* [Shape\_GetChainSegment](/vendor/box2d/#Shape_GetChainSegment)
* [Shape\_GetCircle](/vendor/box2d/#Shape_GetCircle)
* [Shape\_GetClosestPoint](/vendor/box2d/#Shape_GetClosestPoint)
* [Shape\_GetContactCapacity](/vendor/box2d/#Shape_GetContactCapacity)
* [Shape\_GetContactData](/vendor/box2d/#Shape_GetContactData)
* [Shape\_GetDensity](/vendor/box2d/#Shape_GetDensity)
* [Shape\_GetFilter](/vendor/box2d/#Shape_GetFilter)
* [Shape\_GetFriction](/vendor/box2d/#Shape_GetFriction)
* [Shape\_GetMassData](/vendor/box2d/#Shape_GetMassData)
* [Shape\_GetMaterial](/vendor/box2d/#Shape_GetMaterial)
* [Shape\_GetParentChain](/vendor/box2d/#Shape_GetParentChain)
* [Shape\_GetPolygon](/vendor/box2d/#Shape_GetPolygon)
* [Shape\_GetRestitution](/vendor/box2d/#Shape_GetRestitution)
* [Shape\_GetSegment](/vendor/box2d/#Shape_GetSegment)
* [Shape\_GetSensorCapacity](/vendor/box2d/#Shape_GetSensorCapacity)
* [Shape\_GetSensorOverlaps](/vendor/box2d/#Shape_GetSensorOverlaps)
* [Shape\_GetSurfaceMaterial](/vendor/box2d/#Shape_GetSurfaceMaterial)
* [Shape\_GetType](/vendor/box2d/#Shape_GetType)
* [Shape\_GetUserData](/vendor/box2d/#Shape_GetUserData)
* [Shape\_GetWorld](/vendor/box2d/#Shape_GetWorld)
* [Shape\_IsSensor](/vendor/box2d/#Shape_IsSensor)
* [Shape\_IsValid](/vendor/box2d/#Shape_IsValid)
* [Shape\_RayCast](/vendor/box2d/#Shape_RayCast)
* [Shape\_SetCapsule](/vendor/box2d/#Shape_SetCapsule)
* [Shape\_SetCircle](/vendor/box2d/#Shape_SetCircle)
* [Shape\_SetDensity](/vendor/box2d/#Shape_SetDensity)
* [Shape\_SetFilter](/vendor/box2d/#Shape_SetFilter)
* [Shape\_SetFriction](/vendor/box2d/#Shape_SetFriction)
* [Shape\_SetMaterial](/vendor/box2d/#Shape_SetMaterial)
* [Shape\_SetPolygon](/vendor/box2d/#Shape_SetPolygon)
* [Shape\_SetRestitution](/vendor/box2d/#Shape_SetRestitution)
* [Shape\_SetSegment](/vendor/box2d/#Shape_SetSegment)
* [Shape\_SetSurfaceMaterial](/vendor/box2d/#Shape_SetSurfaceMaterial)
* [Shape\_SetUserData](/vendor/box2d/#Shape_SetUserData)
* [Shape\_TestPoint](/vendor/box2d/#Shape_TestPoint)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [CreateCapsuleShape](/vendor/box2d/#CreateCapsuleShape)
* [CreateCircleShape](/vendor/box2d/#CreateCircleShape)
* [CreatePolygonShape](/vendor/box2d/#CreatePolygonShape)
* [CreateSegmentShape](/vendor/box2d/#CreateSegmentShape)

##### Related Constants

* [nullShapeId](/vendor/box2d/#nullShapeId)

### [ShapeProxy ¶](#ShapeProxy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L24)

```
ShapeProxy :: struct {
	// The point cloud
	points: [8][2]f32 `fmt:"v,count"`,
	// The number of points. Must be greater than 0.
	count:  i32,
	// The external radius of the point cloud. May be zero.
	radius: f32,
}
```

 

A distance proxy is used by the GJK algorithm. It encapsulates any shape.
You can provide between 1 and MAX\_POLYGON\_VERTICES and a radius.




##### Related Procedures With Parameters

* [World\_CastShape](/vendor/box2d/#World_CastShape)
* [World\_OverlapShape](/vendor/box2d/#World_OverlapShape)



##### Related Procedures With Returns

* [MakeOffsetProxy](/vendor/box2d/#MakeOffsetProxy)
* [MakeProxy](/vendor/box2d/#MakeProxy)

### [ShapeType ¶](#ShapeType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L280)

```
ShapeType :: enum i32 {
	// A circle with an offset
	circleShape, 
	// A capsule is an extruded circle
	capsuleShape, 
	// A line segment
	segmentShape, 
	// A convex polygon
	polygonShape, 
	// A line segment owned by a chain shape
	chainSegmentShape, 
}
```

 

Shape type
@ingroup shape




##### Related Procedures With Returns

* [Shape\_GetType](/vendor/box2d/#Shape_GetType)

### [Simplex ¶](#Simplex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L247)

```
Simplex :: struct {
	v1:    SimplexVertex `fmt:"v,count"`,
	v2:    SimplexVertex `fmt:"v,count"`,
	v3:    SimplexVertex `fmt:"v,count"`,
	// vertices
	count: i32,
}
```

 

Simplex from the GJK algorithm

### [SimplexCache ¶](#SimplexCache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L195)

```
SimplexCache :: struct {
	// The number of stored simplex points
	count:  u16,
	// The cached simplex indices on shape A
	indexA: [3]u8 `fmt:"v,count"`,
	// The cached simplex indices on shape B
	indexB: [3]u8 `fmt:"v,count"`,
}
```

 

Used to warm start the GJK simplex. If you call this function multiple times with nearby
transforms this might improve performance. Otherwise you can zero initialize this.
The distance cache must be initialized to zero on the first call.
Users should generally just zero initialize this structure for each call.




##### Related Procedures With Parameters

* [CollideChainSegmentAndCapsule](/vendor/box2d/#CollideChainSegmentAndCapsule)
* [CollideChainSegmentAndPolygon](/vendor/box2d/#CollideChainSegmentAndPolygon)
* [ShapeDistance](/vendor/box2d/#ShapeDistance)

##### Related Constants

* [emptySimplexCache](/vendor/box2d/#emptySimplexCache)

### [SimplexVertex ¶](#SimplexVertex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L237)

```
SimplexVertex :: struct {
	wA:     [2]f32,
	// support point in proxyA
	wB:     [2]f32,
	// support point in proxyB
	w:      [2]f32,
	// wB - wA
	a:      f32,
	// barycentric coordinate for closest point
	indexA: i32,
	// wA index
	indexB: i32,
}
```

 

Simplex vertex for debugging the GJK algorithm

### [SurfaceMaterial ¶](#SurfaceMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L302)

```
SurfaceMaterial :: struct {
	// The Coulomb (dry) friction coefficient, usually in the range [0,1].
	friction:          f32,
	// The coefficient of restitution (bounce) usually in the range [0,1].
	// https://en.wikipedia.org/wiki/Coefficient_of_restitution
	restitution:       f32,
	// The rolling resistance usually in the range [0,1].
	rollingResistance: f32,
	// The tangent speed for conveyor belts
	tangentSpeed:      f32,
	// User material identifier. This is passed with query results and to friction and restitution
	// combining functions. It is not used internally.
	userMaterialId:    i32,
	// Custom debug draw color.
	customColor:       u32,
}
```

 

Surface materials allow chain shapes to have per segment surface properties.
@ingroup shape




##### Related Procedures With Parameters

* [Shape\_SetSurfaceMaterial](/vendor/box2d/#Shape_SetSurfaceMaterial)



##### Related Procedures With Returns

* [DefaultSurfaceMaterial](/vendor/box2d/#DefaultSurfaceMaterial)
* [Shape\_GetSurfaceMaterial](/vendor/box2d/#Shape_GetSurfaceMaterial)

### [Sweep ¶](#Sweep) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L267)

```
Sweep :: struct {
	localCenter: [2]f32,
	// Local center of mass position
	c1:          [2]f32,
	// Starting center of mass world position
	c2:          [2]f32,
	// Ending center of mass world position
	q1:          Rot,
	// Starting world rotation
	q2:          Rot,
}
```

 

This describes the motion of a body/shape for TOI computation. Shapes are defined with respect to the body origin,
which may not coincide with the center of mass. However, to support dynamics we must interpolate the center of mass
position.




##### Related Procedures With Parameters

* [GetSweepTransform](/vendor/box2d/#GetSweepTransform)

### [TOIInput ¶](#TOIInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L276)

```
TOIInput :: struct {
	proxyA:      ShapeProxy,
	// The proxy for shape A
	proxyB:      ShapeProxy,
	// The proxy for shape B
	sweepA:      Sweep,
	// The movement of shape A
	sweepB:      Sweep,
	// The movement of shape B
	maxFraction: f32,
}
```

 

Input parameters for b2TimeOfImpact




##### Related Procedures With Parameters

* [TimeOfImpact](/vendor/box2d/#TimeOfImpact)

### [TOIOutput ¶](#TOIOutput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L294)

```
TOIOutput :: struct {
	state:    TOIState,
	// The type of result
	fraction: f32,
}
```

 

Output parameters for b2TimeOfImpact.




##### Related Procedures With Returns

* [TimeOfImpact](/vendor/box2d/#TimeOfImpact)

### [TOIState ¶](#TOIState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L285)

```
TOIState :: enum i32 {
	Unknown, 
	Failed, 
	Overlapped, 
	Hit, 
	Separated, 
}
```

 

Describes the TOI output

### [TaskCallback ¶](#TaskCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L20)

```
TaskCallback :: proc "c" (startIndex, endIndex: i32, workerIndex: u32, taskContext: rawptr)
```

 

Task interface
This is prototype for a Box2D task. Your task system is expected to invoke the Box2D task with these arguments.
The task spans a range of the parallel-for: [startIndex, endIndex)
The worker index must correctly identify each worker in the user thread pool, expected in [0, workerCount).

```
A worker must only exist on only one thread at a time and is analogous to the thread index.
```

The task context is the context pointer sent from Box2D when it is enqueued.

```
The startIndex and endIndex are expected in the range [0, itemCount) where itemCount is the argument to b2EnqueueTaskCallback
```

below. Box2D expects startIndex < endIndex and will execute a loop like this:

```
@code{.odin}
for i in startIndex ..< endIndex {
	DoWork()
}
@endcode
@ingroup world
```

### [Transform ¶](#Transform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L22)

```
Transform :: struct {
	p: [2]f32,
	q: Rot,
}
```

##### Related Procedures With Parameters

* [Body\_SetTargetTransform](/vendor/box2d/#Body_SetTargetTransform)
* [CollideCapsuleAndCircle](/vendor/box2d/#CollideCapsuleAndCircle)
* [CollideCapsules](/vendor/box2d/#CollideCapsules)
* [CollideChainSegmentAndCapsule](/vendor/box2d/#CollideChainSegmentAndCapsule)
* [CollideChainSegmentAndCircle](/vendor/box2d/#CollideChainSegmentAndCircle)
* [CollideChainSegmentAndPolygon](/vendor/box2d/#CollideChainSegmentAndPolygon)
* [CollideCircles](/vendor/box2d/#CollideCircles)
* [CollidePolygonAndCapsule](/vendor/box2d/#CollidePolygonAndCapsule)
* [CollidePolygonAndCircle](/vendor/box2d/#CollidePolygonAndCircle)
* [CollidePolygons](/vendor/box2d/#CollidePolygons)
* [CollideSegmentAndCapsule](/vendor/box2d/#CollideSegmentAndCapsule)
* [CollideSegmentAndCircle](/vendor/box2d/#CollideSegmentAndCircle)
* [CollideSegmentAndPolygon](/vendor/box2d/#CollideSegmentAndPolygon)
* [ComputeCapsuleAABB](/vendor/box2d/#ComputeCapsuleAABB)
* [ComputeCircleAABB](/vendor/box2d/#ComputeCircleAABB)
* [ComputePolygonAABB](/vendor/box2d/#ComputePolygonAABB)
* [ComputeSegmentAABB](/vendor/box2d/#ComputeSegmentAABB)
* [InvMulTransforms](/vendor/box2d/#InvMulTransforms)
* [InvTransformPoint](/vendor/box2d/#InvTransformPoint)
* [MulTransforms](/vendor/box2d/#MulTransforms)
* [TransformPoint](/vendor/box2d/#TransformPoint)
* [TransformPolygon](/vendor/box2d/#TransformPolygon)



##### Related Procedures With Returns

* [Body\_GetTransform](/vendor/box2d/#Body_GetTransform)
* [GetSweepTransform](/vendor/box2d/#GetSweepTransform)

##### Related Constants

* [Transform\_identity](/vendor/box2d/#Transform_identity)

### [TreeQueryCallbackFcn ¶](#TreeQueryCallbackFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L432)

```
TreeQueryCallbackFcn :: proc "c" (proxyId: i32, userData: u64, ctx: rawptr) -> bool
```

 

This function receives proxies found in the AABB query.
@return true if the query should continue




##### Related Procedures With Parameters

* [DynamicTree\_Query](/vendor/box2d/#DynamicTree_Query)

### [TreeRayCastCallbackFcn ¶](#TreeRayCastCallbackFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L447)

```
TreeRayCastCallbackFcn :: proc "c" (#by_ptr input: RayCastInput, proxyId: i32, userData: u64, ctx: rawptr) -> f32
```

 

This function receives clipped raycast input for a proxy. The function
returns the new ray fraction.
return a value of 0 to terminate the ray cast
return a value less than input->maxFraction to clip the ray
return a value of input->maxFraction to continue the ray cast without clipping




##### Related Procedures With Parameters

* [DynamicTree\_RayCast](/vendor/box2d/#DynamicTree_RayCast)

### [TreeShapeCastCallbackFcn ¶](#TreeShapeCastCallbackFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L439)

```
TreeShapeCastCallbackFcn :: proc "c" (#by_ptr input: ShapeCastInput, proxyId: i32, userData: u64, ctx: rawptr) -> f32
```

 

This function receives clipped ray cast input for a proxy. The function
returns the new ray fraction.
return a value of 0 to terminate the ray cast
return a value less than input->maxFraction to clip the ray
return a value of input->maxFraction to continue the ray cast without clipping




##### Related Procedures With Parameters

* [DynamicTree\_ShapeCast](/vendor/box2d/#DynamicTree_ShapeCast)

### [TreeStats ¶](#TreeStats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L422)

```
TreeStats :: struct {
	// Number of internal nodes visited during the query
	nodeVisits: i32,
	// Number of leaf nodes visited during the query
	leafVisits: i32,
}
```

 

These are performance results returned by dynamic tree queries.




##### Related Procedures With Returns

* [DynamicTree\_Query](/vendor/box2d/#DynamicTree_Query)
* [DynamicTree\_RayCast](/vendor/box2d/#DynamicTree_RayCast)
* [DynamicTree\_ShapeCast](/vendor/box2d/#DynamicTree_ShapeCast)
* [World\_CastRay](/vendor/box2d/#World_CastRay)
* [World\_CastShape](/vendor/box2d/#World_CastShape)
* [World\_OverlapAABB](/vendor/box2d/#World_OverlapAABB)
* [World\_OverlapShape](/vendor/box2d/#World_OverlapShape)

### [Vec2 ¶](#Vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L8)

```
Vec2 :: [2]f32
```

##### Related Procedures With Parameters

* [Abs](/vendor/box2d/#Abs)
* [Add](/vendor/box2d/#Add)
* [Body\_ApplyForce](/vendor/box2d/#Body_ApplyForce)
* [Body\_ApplyForceToCenter](/vendor/box2d/#Body_ApplyForceToCenter)
* [Body\_ApplyLinearImpulse](/vendor/box2d/#Body_ApplyLinearImpulse)
* [Body\_ApplyLinearImpulseToCenter](/vendor/box2d/#Body_ApplyLinearImpulseToCenter)
* [Body\_GetLocalPoint](/vendor/box2d/#Body_GetLocalPoint)
* [Body\_GetLocalPointVelocity](/vendor/box2d/#Body_GetLocalPointVelocity)
* [Body\_GetLocalVector](/vendor/box2d/#Body_GetLocalVector)
* [Body\_GetWorldPoint](/vendor/box2d/#Body_GetWorldPoint)
* [Body\_GetWorldPointVelocity](/vendor/box2d/#Body_GetWorldPointVelocity)
* [Body\_GetWorldVector](/vendor/box2d/#Body_GetWorldVector)
* [Body\_SetLinearVelocity](/vendor/box2d/#Body_SetLinearVelocity)
* [Body\_SetTransform](/vendor/box2d/#Body_SetTransform)
* [Clamp](/vendor/box2d/#Clamp)
* [ClipVector](/vendor/box2d/#ClipVector)
* [ComputeRotationBetweenUnitVectors](/vendor/box2d/#ComputeRotationBetweenUnitVectors)
* [Cross](/vendor/box2d/#Cross)
* [CrossSV](/vendor/box2d/#CrossSV)
* [CrossVS](/vendor/box2d/#CrossVS)
* [Distance](/vendor/box2d/#Distance)
* [DistanceSquared](/vendor/box2d/#DistanceSquared)
* [Dot](/vendor/box2d/#Dot)
* [GetLengthAndNormalize](/vendor/box2d/#GetLengthAndNormalize)
* [InvRotateVector](/vendor/box2d/#InvRotateVector)
* [InvTransformPoint](/vendor/box2d/#InvTransformPoint)
* [IsNormalized](/vendor/box2d/#IsNormalized)
* [IsValidVec2](/vendor/box2d/#IsValidVec2)
* [Joint\_SetLocalAnchorA](/vendor/box2d/#Joint_SetLocalAnchorA)
* [Joint\_SetLocalAnchorB](/vendor/box2d/#Joint_SetLocalAnchorB)
* [Joint\_SetLocalAxisA](/vendor/box2d/#Joint_SetLocalAxisA)
* [LeftPerp](/vendor/box2d/#LeftPerp)
* [Length](/vendor/box2d/#Length)
* [LengthSquared](/vendor/box2d/#LengthSquared)
* [Lerp](/vendor/box2d/#Lerp)
* [MakeOffsetBox](/vendor/box2d/#MakeOffsetBox)
* [MakeOffsetPolygon](/vendor/box2d/#MakeOffsetPolygon)
* [MakeOffsetProxy](/vendor/box2d/#MakeOffsetProxy)
* [MakeOffsetRoundedBox](/vendor/box2d/#MakeOffsetRoundedBox)
* [MakeOffsetRoundedPolygon](/vendor/box2d/#MakeOffsetRoundedPolygon)
* [Max](/vendor/box2d/#Max)
* [Min](/vendor/box2d/#Min)
* [MotorJoint\_SetLinearOffset](/vendor/box2d/#MotorJoint_SetLinearOffset)
* [MouseJoint\_SetTarget](/vendor/box2d/#MouseJoint_SetTarget)
* [Mul](/vendor/box2d/#Mul)
* [MulAdd](/vendor/box2d/#MulAdd)
* [MulMV](/vendor/box2d/#MulMV)
* [MulSV](/vendor/box2d/#MulSV)
* [MulSub](/vendor/box2d/#MulSub)
* [Neg](/vendor/box2d/#Neg)
* [Normalize](/vendor/box2d/#Normalize)
* [NormalizeChecked](/vendor/box2d/#NormalizeChecked)
* [PlaneSeparation](/vendor/box2d/#PlaneSeparation)
* [PointInCapsule](/vendor/box2d/#PointInCapsule)
* [PointInCircle](/vendor/box2d/#PointInCircle)
* [PointInPolygon](/vendor/box2d/#PointInPolygon)
* [RightPerp](/vendor/box2d/#RightPerp)
* [RotateVector](/vendor/box2d/#RotateVector)
* [SegmentDistance](/vendor/box2d/#SegmentDistance)
* [Shape\_GetClosestPoint](/vendor/box2d/#Shape_GetClosestPoint)
* [Shape\_TestPoint](/vendor/box2d/#Shape_TestPoint)
* [Solve22](/vendor/box2d/#Solve22)
* [SolvePlanes](/vendor/box2d/#SolvePlanes)
* [Sub](/vendor/box2d/#Sub)
* [TransformPoint](/vendor/box2d/#TransformPoint)
* [World\_CastMover](/vendor/box2d/#World_CastMover)
* [World\_CastRay](/vendor/box2d/#World_CastRay)
* [World\_CastRayClosest](/vendor/box2d/#World_CastRayClosest)
* [World\_CastShape](/vendor/box2d/#World_CastShape)
* [World\_SetGravity](/vendor/box2d/#World_SetGravity)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [AABB\_Center](/vendor/box2d/#AABB_Center)
* [AABB\_Extents](/vendor/box2d/#AABB_Extents)
* [Body\_GetLinearVelocity](/vendor/box2d/#Body_GetLinearVelocity)
* [Body\_GetLocalCenterOfMass](/vendor/box2d/#Body_GetLocalCenterOfMass)
* [Body\_GetPosition](/vendor/box2d/#Body_GetPosition)
* [Body\_GetWorldCenterOfMass](/vendor/box2d/#Body_GetWorldCenterOfMass)
* [Joint\_GetConstraintForce](/vendor/box2d/#Joint_GetConstraintForce)
* [Joint\_GetLocalAnchorA](/vendor/box2d/#Joint_GetLocalAnchorA)
* [Joint\_GetLocalAnchorB](/vendor/box2d/#Joint_GetLocalAnchorB)
* [Joint\_GetLocalAxisA](/vendor/box2d/#Joint_GetLocalAxisA)
* [MotorJoint\_GetLinearOffset](/vendor/box2d/#MotorJoint_GetLinearOffset)
* [MouseJoint\_GetTarget](/vendor/box2d/#MouseJoint_GetTarget)
* [Rot\_GetXAxis](/vendor/box2d/#Rot_GetXAxis)
* [Rot\_GetYAxis](/vendor/box2d/#Rot_GetYAxis)
* [World\_GetGravity](/vendor/box2d/#World_GetGravity)

##### Related Constants

* [Vec2\_zero](/vendor/box2d/#Vec2_zero)

### [Version ¶](#Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L53)

```
Version :: struct {
	major:    i32,
	// Significant changes
	minor:    i32,
	// Incremental changes
	revision: i32,
}
```

 

Version numbering scheme.

See https://semver.org/

### [WeldJointDef ¶](#WeldJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L780)

```
WeldJointDef :: struct {
	// The first attached body
	bodyIdA:             BodyId,
	// The second attached body
	bodyIdB:             BodyId,
	// The local anchor point relative to bodyA's origin
	localAnchorA:        [2]f32,
	// The local anchor point relative to bodyB's origin
	localAnchorB:        [2]f32,
	// The bodyB angle minus bodyA angle in the reference state (radians)
	referenceAngle:      f32,
	// Linear stiffness expressed as Hertz (cycles per second). Use zero for maximum stiffness.
	linearHertz:         f32,
	// Angular stiffness as Hertz (cycles per second). Use zero for maximum stiffness.
	angularHertz:        f32,
	// Linear damping ratio, non-dimensional. Use 1 for critical damping.
	linearDampingRatio:  f32,
	// Linear damping ratio, non-dimensional. Use 1 for critical damping.
	angularDampingRatio: f32,
	// Set this flag to true if the attached bodies should collide
	collideConnected:    bool,
	// User data pointer
	userData:            rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:       i32,
}
```

 

Weld joint definition

A weld joint connect to bodies together rigidly. This constraint provides springs to mimic

```
soft-body simulation.
```

@note The approximate solver in Box2D cannot hold many bodies together rigidly
@ingroup weld\_joint




##### Related Procedures With Parameters

* [CreateWeldJoint](/vendor/box2d/#CreateWeldJoint)



##### Related Procedures With Returns

* [DefaultWeldJointDef](/vendor/box2d/#DefaultWeldJointDef)

### [WheelJointDef ¶](#WheelJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L826)

```
WheelJointDef :: struct {
	// The first attached body
	bodyIdA:          BodyId,
	// The second attached body
	bodyIdB:          BodyId,
	// The local anchor point relative to bodyA's origin
	localAnchorA:     [2]f32,
	// The local anchor point relative to bodyB's origin
	localAnchorB:     [2]f32,
	// The local translation unit axis in bodyA
	localAxisA:       [2]f32,
	// Enable a linear spring along the local axis
	enableSpring:     bool,
	// Spring stiffness in Hertz
	hertz:            f32,
	// Spring damping ratio, non-dimensional
	dampingRatio:     f32,
	// Enable/disable the joint linear limit
	enableLimit:      bool,
	// The lower translation limit
	lowerTranslation: f32,
	// The upper translation limit
	upperTranslation: f32,
	// Enable/disable the joint rotational motor
	enableMotor:      bool,
	// The maximum motor torque, typically in newton-meters
	maxMotorTorque:   f32,
	// The desired motor speed in radians per second
	motorSpeed:       f32,
	// Set this flag to true if the attached bodies should collide
	collideConnected: bool,
	// User data pointer
	userData:         rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:    i32,
}
```

 

Wheel joint definition

This requires defining a line of motion using an axis and an anchor point.
The definition uses local anchor points and a local axis so that the initial
configuration can violate the constraint slightly. The joint translation is zero
when the local anchor points coincide in world space.
@ingroup wheel\_joint




##### Related Procedures With Parameters

* [CreateWheelJoint](/vendor/box2d/#CreateWheelJoint)



##### Related Procedures With Returns

* [DefaultWheelJointDef](/vendor/box2d/#DefaultWheelJointDef)

### [WorldDef ¶](#WorldDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L68)

```
WorldDef :: struct {
	// Gravity vector. Box2D has no up-vector defined.
	gravity:              [2]f32,
	// Restitution speed threshold, usually in m/s. Collisions above this
	// speed have restitution applied (will bounce).
	restitutionThreshold: f32,
	// Threshold speed for hit events. Usually meters per second.
	hitEventThreshold:    f32,
	// Contact stiffness. Cycles per second. Increasing this increases the speed of overlap recovery, but can introduce jitter.
	contactHertz:         f32,
	// Contact bounciness. Non-dimensional. You can speed up overlap recovery by decreasing this with
	// the trade-off that overlap resolution becomes more energetic.
	contactDampingRatio:  f32,
	// This parameter controls how fast overlap is resolved and usually has units of meters per second. This only
	// puts a cap on the resolution speed. The resolution speed is increased by increasing the hertz and/or
	// decreasing the damping ratio.
	maxContactPushSpeed:  f32,
	// Maximum linear speed. Usually meters per second.
	maximumLinearSpeed:   f32,
	// Optional mixing callback for friction. The default uses sqrt(frictionA * frictionB).
	frictionCallback:     FrictionCallback,
	// Optional mixing callback for restitution. The default uses max(restitutionA, restitutionB).
	restitutionCallback:  RestitutionCallback,
	// Can bodies go to sleep to improve performance
	enableSleep:          bool,
	// Enable continuous collision
	enableContinuous:     bool,
	// Number of workers to use with the provided task system. Box2D performs best when using only
	// performance cores and accessing a single L2 cache. Efficiency cores and hyper-threading provide
	// little benefit and may even harm performance.
	// @note Box2D does not create threads. This is the number of threads your applications has created
	// that you are allocating to b2World_Step.
	// @warning Do not modify the default value unless you are also providing a task system and providing
	// task callbacks (enqueueTask and finishTask).
	workerCount:          i32,
	// Function to spawn tasks
	enqueueTask:          EnqueueTaskCallback,
	// Function to finish a task
	finishTask:           FinishTaskCallback,
	// User context that is provided to enqueueTask and finishTask
	userTaskContext:      rawptr,
	// User data
	userData:             rawptr,
	// Used internally to detect a valid definition. DO NOT SET.
	internalValue:        i32,
}
```

 

World definition used to create a simulation world.
Must be initialized using b2DefaultWorldDef().
@ingroup world




##### Related Procedures With Parameters

* [CreateWorld](/vendor/box2d/#CreateWorld)



##### Related Procedures With Returns

* [DefaultWorldDef](/vendor/box2d/#DefaultWorldDef)

### [WorldId ¶](#WorldId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L25)

```
WorldId :: struct {
	index1:     u16,
	generation: u16,
}
```

 

/ World id references a world instance. This should be treated as an opaque handle.




##### Related Procedures With Parameters

* [CreateBody](/vendor/box2d/#CreateBody)
* [CreateDistanceJoint](/vendor/box2d/#CreateDistanceJoint)
* [CreateFilterJoint](/vendor/box2d/#CreateFilterJoint)
* [CreateMotorJoint](/vendor/box2d/#CreateMotorJoint)
* [CreateMouseJoint](/vendor/box2d/#CreateMouseJoint)
* [CreatePrismaticJoint](/vendor/box2d/#CreatePrismaticJoint)
* [CreateRevoluteJoint](/vendor/box2d/#CreateRevoluteJoint)
* [CreateWeldJoint](/vendor/box2d/#CreateWeldJoint)
* [CreateWheelJoint](/vendor/box2d/#CreateWheelJoint)
* [DestroyWorld](/vendor/box2d/#DestroyWorld)
* [StoreWorldId](/vendor/box2d/#StoreWorldId)
* [World\_CastMover](/vendor/box2d/#World_CastMover)
* [World\_CastRay](/vendor/box2d/#World_CastRay)
* [World\_CastRayClosest](/vendor/box2d/#World_CastRayClosest)
* [World\_CastShape](/vendor/box2d/#World_CastShape)
* [World\_CollideMover](/vendor/box2d/#World_CollideMover)
* [World\_Draw](/vendor/box2d/#World_Draw)
* [World\_DumpMemoryStats](/vendor/box2d/#World_DumpMemoryStats)
* [World\_EnableContinuous](/vendor/box2d/#World_EnableContinuous)
* [World\_EnableSleeping](/vendor/box2d/#World_EnableSleeping)
* [World\_EnableSpeculative](/vendor/box2d/#World_EnableSpeculative)
* [World\_EnableWarmStarting](/vendor/box2d/#World_EnableWarmStarting)
* [World\_Explode](/vendor/box2d/#World_Explode)
* [World\_GetAwakeBodyCount](/vendor/box2d/#World_GetAwakeBodyCount)
* [World\_GetBodyEvents](/vendor/box2d/#World_GetBodyEvents)
* [World\_GetContactEvents](/vendor/box2d/#World_GetContactEvents)
* [World\_GetCounters](/vendor/box2d/#World_GetCounters)
* [World\_GetGravity](/vendor/box2d/#World_GetGravity)
* [World\_GetHitEventThreshold](/vendor/box2d/#World_GetHitEventThreshold)
* [World\_GetMaximumLinearSpeed](/vendor/box2d/#World_GetMaximumLinearSpeed)
* [World\_GetProfile](/vendor/box2d/#World_GetProfile)
* [World\_GetRestitutionThreshold](/vendor/box2d/#World_GetRestitutionThreshold)
* [World\_GetSensorEvents](/vendor/box2d/#World_GetSensorEvents)
* [World\_GetUserData](/vendor/box2d/#World_GetUserData)
* [World\_IsContinuousEnabled](/vendor/box2d/#World_IsContinuousEnabled)
* [World\_IsSleepingEnabled](/vendor/box2d/#World_IsSleepingEnabled)
* [World\_IsValid](/vendor/box2d/#World_IsValid)
* [World\_IsWarmStartingEnabled](/vendor/box2d/#World_IsWarmStartingEnabled)
* [World\_OverlapAABB](/vendor/box2d/#World_OverlapAABB)
* [World\_OverlapShape](/vendor/box2d/#World_OverlapShape)
* [World\_RebuildStaticTree](/vendor/box2d/#World_RebuildStaticTree)
* [World\_SetContactTuning](/vendor/box2d/#World_SetContactTuning)
* [World\_SetCustomFilterCallback](/vendor/box2d/#World_SetCustomFilterCallback)
* [World\_SetFrictionCallback](/vendor/box2d/#World_SetFrictionCallback)
* [World\_SetGravity](/vendor/box2d/#World_SetGravity)
* [World\_SetHitEventThreshold](/vendor/box2d/#World_SetHitEventThreshold)
* [World\_SetMaximumLinearSpeed](/vendor/box2d/#World_SetMaximumLinearSpeed)
* [World\_SetPreSolveCallback](/vendor/box2d/#World_SetPreSolveCallback)
* [World\_SetRestitutionCallback](/vendor/box2d/#World_SetRestitutionCallback)
* [World\_SetRestitutionThreshold](/vendor/box2d/#World_SetRestitutionThreshold)
* [World\_SetUserData](/vendor/box2d/#World_SetUserData)
* [World\_Step](/vendor/box2d/#World_Step)
* [IsValid](/vendor/box2d/#IsValid) *(procedure groups)*



##### Related Procedures With Returns

* [Body\_GetWorld](/vendor/box2d/#Body_GetWorld)
* [Chain\_GetWorld](/vendor/box2d/#Chain_GetWorld)
* [CreateWorld](/vendor/box2d/#CreateWorld)
* [Joint\_GetWorld](/vendor/box2d/#Joint_GetWorld)
* [LoadWorldId](/vendor/box2d/#LoadWorldId)
* [Shape\_GetWorld](/vendor/box2d/#Shape_GetWorld)

##### Related Constants

* [nullWorldId](/vendor/box2d/#nullWorldId)

## Constants

### [EPSILON ¶](#EPSILON) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L6)

```
EPSILON :: math.F32_EPSILON
```

### [HASH\_INIT ¶](#HASH_INIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L59)

```
HASH_INIT :: 5381
```

### [MAX\_POLYGON\_VERTICES ¶](#MAX_POLYGON_VERTICES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L8)

```
MAX_POLYGON_VERTICES :: 8
```

 

The maximum number of vertices on a convex polygon. Changing this affects performance even if you

```
don't use more vertices.
```

### [Mat22\_zero ¶](#Mat22_zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L44)

```
Mat22_zero: matrix[2, 2]f32 : Mat22{0, 0, 0, 0}
```

### [PI ¶](#PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L39)

```
PI :: math.PI
```

### [Rot\_identity ¶](#Rot_identity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L42)

```
Rot_identity :: Rot{1, 0}
```

### [Transform\_identity ¶](#Transform_identity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L43)

```
Transform_identity :: Transform{{0, 0}, {1, 0}}
```

### [Vec2\_zero ¶](#Vec2_zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L41)

```
Vec2_zero: [2]f32 : Vec2{0, 0}
```

### [bodyTypeCount ¶](#bodyTypeCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L150)

```
bodyTypeCount :: len(BodyType)
```

 

number of body types

### [emptySimplexCache ¶](#emptySimplexCache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin#L206)

```
emptySimplexCache :: SimplexCache{}
```

### [nullBodyId ¶](#nullBodyId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L62)

```
nullBodyId :: BodyId{}
```

### [nullChainId ¶](#nullChainId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L64)

```
nullChainId :: ChainId{}
```

### [nullJointId ¶](#nullJointId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L65)

```
nullJointId :: JointId{}
```

### [nullShapeId ¶](#nullShapeId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L63)

```
nullShapeId :: ShapeId{}
```

### [nullWorldId ¶](#nullWorldId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L61)

```
nullWorldId :: WorldId{}
```

 

/ Use these to make your identifiers null.
/ You may also use zero initialization to get null.

### [shapeTypeCount ¶](#shapeTypeCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin#L298)

```
shapeTypeCount :: len(ShapeType)
```

 

The number of shape types

## Variables

This section is empty.

## Procedures

### [AABB\_Center ¶](#AABB_Center) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L525)

```
AABB_Center :: proc "c" (a: AABB) -> [2]f32 {…}
```

 

Get the center of the AABB.

### [AABB\_Contains ¶](#AABB_Contains) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L515)

```
AABB_Contains :: proc "c" (a, b: AABB) -> bool {…}
```

 

Does a fully contain b

### [AABB\_Extents ¶](#AABB_Extents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L531)

```
AABB_Extents :: proc "c" (a: AABB) -> [2]f32 {…}
```

 

Get the extents of the AABB (half-widths).

### [AABB\_Overlaps ¶](#AABB_Overlaps) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L547)

```
AABB_Overlaps :: proc "c" (a, b: AABB) -> bool {…}
```

 

Do a and b overlap

### [AABB\_Union ¶](#AABB_Union) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L537)

```
AABB_Union :: proc "c" (a, b: AABB) -> (c: AABB) {…}
```

 

Union of two AABBs

### [Abs ¶](#Abs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L193)

```
Abs :: proc "c" (a: [2]f32) -> (b: [2]f32) {…}
```

 

Component-wise absolute vector

### [AbsFloat ¶](#AbsFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L85)

```
AbsFloat :: proc "c" (a: f32) -> f32 {…}
```

 

@return the absolute value of a float

### [AbsInt ¶](#AbsInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L60)

```
AbsInt :: proc "c" (a: i32) -> i32 {…}
```

 

@return the absolute value of an integer

### [Add ¶](#Add) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L144)

```
Add :: proc "c" (a, b: [2]f32) -> [2]f32 {…}
```

 

Vector addition

### [Atan2 ¶](#Atan2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L96)

```
Atan2 :: proc "c" (y, x: f32) -> f32 {…}
```

### [Body\_ApplyAngularImpulse ¶](#Body_ApplyAngularImpulse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L829)

```
Body_ApplyAngularImpulse :: proc "c" (bodyId: BodyId, impulse: f32, wake: bool) ---
```

 

Apply an angular impulse. The impulse is ignored if the body is not awake.
This optionally wakes the body.

```
@param bodyId The body id
```

@param impulse the angular impulse, usually in units of kg*m*m/s
@param wake also wake up the body

```
@warning This should be used for one-shot impulses. If you need a steady force,
```

use a force instead, which will work better with the sub-stepping solver.

### [Body\_ApplyForce ¶](#Body_ApplyForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L785)

```
Body_ApplyForce :: proc "c" (bodyId: BodyId, force: [2]f32, point: [2]f32, wake: bool) ---
```

 

Apply a force at a world point. If the force is not applied at the center of mass,
it will generate a torque and affect the angular velocity. This optionally wakes up the body.

```
The force is ignored if the body is not awake.
@param bodyId The body id
```

@param force The world force vector, usually in newtons (N)
@param point The world position of the point of application
@param wake Option to wake up the body

### [Body\_ApplyForceToCenter ¶](#Body_ApplyForceToCenter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L792)

```
Body_ApplyForceToCenter :: proc "c" (bodyId: BodyId, force: [2]f32, wake: bool) ---
```

 

Apply a force to the center of mass. This optionally wakes up the body.

```
The force is ignored if the body is not awake.
@param bodyId The body id
```

@param force the world force vector, usually in newtons (N).
@param wake also wake up the body

### [Body\_ApplyLinearImpulse ¶](#Body_ApplyLinearImpulse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L811)

```
Body_ApplyLinearImpulse :: proc "c" (bodyId: BodyId, impulse: [2]f32, point: [2]f32, wake: bool) ---
```

 

Apply an impulse at a point. This immediately modifies the velocity.
It also modifies the angular velocity if the point of application
is not at the center of mass. This optionally wakes the body.
The impulse is ignored if the body is not awake.

```
@param bodyId The body id
```

@param impulse the world impulse vector, usually in N*s or kg*m/s.
@param point the world position of the point of application.
@param wake also wake up the body

```
@warning This should be used for one-shot impulses. If you need a steady force,
```

use a force instead, which will work better with the sub-stepping solver.

### [Body\_ApplyLinearImpulseToCenter ¶](#Body_ApplyLinearImpulseToCenter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L820)

```
Body_ApplyLinearImpulseToCenter :: proc "c" (bodyId: BodyId, impulse: [2]f32, wake: bool) ---
```

 

Apply an impulse to the center of mass. This immediately modifies the velocity.
The impulse is ignored if the body is not awake. This optionally wakes the body.

```
@param bodyId The body id
```

@param impulse the world impulse vector, usually in N*s or kg*m/s.
@param wake also wake up the body

```
@warning This should be used for one-shot impulses. If you need a steady force,
```

use a force instead, which will work better with the sub-stepping solver.

### [Body\_ApplyMassFromShapes ¶](#Body_ApplyMassFromShapes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L856)

```
Body_ApplyMassFromShapes :: proc "c" (bodyId: BodyId) ---
```

 

This update the mass properties to the sum of the mass properties of the shapes.
This normally does not need to be called unless you called SetMassData to override
the mass and you later want to reset the mass.

```
You may also use this when automatic mass computation has been disabled.
You should call this regardless of body type.
```

### [Body\_ApplyTorque ¶](#Body_ApplyTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L799)

```
Body_ApplyTorque :: proc "c" (bodyId: BodyId, torque: f32, wake: bool) ---
```

 

Apply a torque. This affects the angular velocity without affecting the linear velocity.

```
This optionally wakes the body. The torque is ignored if the body is not awake.
@param bodyId The body id
```

@param torque about the z-axis (out of the screen), usually in N\*m.
@param wake also wake up the body

### [Body\_ComputeAABB ¶](#Body_ComputeAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L942)

```
Body_ComputeAABB :: proc "c" (bodyId: BodyId) -> AABB ---
```

 

Get the current world AABB that contains all the attached shapes. Note that this may not encompass the body origin.

```
If there are no shapes attached then the returned AABB is empty and centered on the body origin.
```

### [Body\_Disable ¶](#Body_Disable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L901)

```
Body_Disable :: proc "c" (bodyId: BodyId) ---
```

 

Disable a body by removing it completely from the simulation. This is expensive.

### [Body\_Enable ¶](#Body_Enable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L904)

```
Body_Enable :: proc "c" (bodyId: BodyId) ---
```

 

Enable a body by adding it to the simulation. This is expensive.

### [Body\_EnableContactEvents ¶](#Body_EnableContactEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L922)

```
Body_EnableContactEvents :: proc "c" (bodyId: BodyId, flag: bool) ---
```

 

Enable/disable contact events on all shapes.
@see b2ShapeDef::enableContactEvents
@warning changing this at runtime may cause mismatched begin/end touch events

### [Body\_EnableHitEvents ¶](#Body_EnableHitEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L926)

```
Body_EnableHitEvents :: proc "c" (bodyId: BodyId, flag: bool) ---
```

 

Enable/disable hit events on all shapes

```
@see b2ShapeDef::enableHitEvents
```

### [Body\_EnableSleep ¶](#Body_EnableSleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L886)

```
Body_EnableSleep :: proc "c" (bodyId: BodyId, enableSleep: bool) ---
```

 

Enable or disable sleeping for this body. If sleeping is disabled the body will wake.

### [Body\_GetAngularDamping ¶](#Body_GetAngularDamping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L868)

```
Body_GetAngularDamping :: proc "c" (bodyId: BodyId) -> f32 ---
```

 

Get the current angular damping.

### [Body\_GetAngularVelocity ¶](#Body_GetAngularVelocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L758)

```
Body_GetAngularVelocity :: proc "c" (bodyId: BodyId) -> f32 ---
```

 

Get the angular velocity of a body in radians per second

### [Body\_GetContactCapacity ¶](#Body_GetContactCapacity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L938)

```
Body_GetContactCapacity :: proc "c" (bodyId: BodyId) -> i32 ---
```

 

Get the maximum capacity required for retrieving all the touching contacts on a body

### [Body\_GetContactData ¶](#Body_GetContactData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L971)

```
Body_GetContactData :: proc "c" (bodyId: BodyId, contactData: []ContactData) -> []ContactData {…}
```

 

Get the touching contact data for a body

### [Body\_GetGravityScale ¶](#Body_GetGravityScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L875)

```
Body_GetGravityScale :: proc "c" (bodyId: BodyId) -> f32 ---
```

 

Get the current gravity scale

### [Body\_GetJointCount ¶](#Body_GetJointCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L935)

```
Body_GetJointCount :: proc "c" (bodyId: BodyId) -> i32 ---
```

 

Get the number of joints on this body

### [Body\_GetJoints ¶](#Body_GetJoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L960)

```
Body_GetJoints :: proc "c" (bodyId: BodyId, jointArray: []JointId) -> []JointId {…}
```

 

Get the joint ids for all joints on this body, up to the provided capacity

```
@returns the joint ids stored in the user array
```

### [Body\_GetLinearDamping ¶](#Body_GetLinearDamping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L862)

```
Body_GetLinearDamping :: proc "c" (bodyId: BodyId) -> f32 ---
```

 

Get the current linear damping.

### [Body\_GetLinearVelocity ¶](#Body_GetLinearVelocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L755)

```
Body_GetLinearVelocity :: proc "c" (bodyId: BodyId) -> [2]f32 ---
```

 

Get the linear velocity of a body's center of mass. Usually in meters per second.

### [Body\_GetLocalCenterOfMass ¶](#Body_GetLocalCenterOfMass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L838)

```
Body_GetLocalCenterOfMass :: proc "c" (bodyId: BodyId) -> [2]f32 ---
```

 

Get the center of mass position of the body in local space

### [Body\_GetLocalPoint ¶](#Body_GetLocalPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L743)

```
Body_GetLocalPoint :: proc "c" (bodyId: BodyId, worldPoint: [2]f32) -> [2]f32 ---
```

 

Get a local point on a body given a world point

### [Body\_GetLocalPointVelocity ¶](#Body_GetLocalPointVelocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L773)

```
Body_GetLocalPointVelocity :: proc "c" (bodyId: BodyId, localPoint: [2]f32) -> [2]f32 ---
```

 

Get the linear velocity of a local point attached to a body. Usually in meters per second.

### [Body\_GetLocalVector ¶](#Body_GetLocalVector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L749)

```
Body_GetLocalVector :: proc "c" (bodyId: BodyId, worldVector: [2]f32) -> [2]f32 ---
```

 

Get a local vector on a body given a world vector

### [Body\_GetMass ¶](#Body_GetMass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L832)

```
Body_GetMass :: proc "c" (bodyId: BodyId) -> f32 ---
```

 

Get the mass of the body, usually in kilograms

### [Body\_GetMassData ¶](#Body_GetMassData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L849)

```
Body_GetMassData :: proc "c" (bodyId: BodyId) -> MassData ---
```

 

Get the mass data for a body

### [Body\_GetName ¶](#Body_GetName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L720)

```
Body_GetName :: proc "c" (bodyId: BodyId) -> cstring ---
```

 

Get the body name. May be nil.

### [Body\_GetPosition ¶](#Body_GetPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L729)

```
Body_GetPosition :: proc "c" (bodyId: BodyId) -> [2]f32 ---
```

 

Get the world position of a body. This is the location of the body origin.

### [Body\_GetRotation ¶](#Body_GetRotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L732)

```
Body_GetRotation :: proc "c" (bodyId: BodyId) -> Rot ---
```

 

Get the world rotation of a body as a cosine/sine pair (complex number)

### [Body\_GetRotationalInertia ¶](#Body_GetRotationalInertia) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L835)

```
Body_GetRotationalInertia :: proc "c" (bodyId: BodyId) -> f32 ---
```

 

Get the rotational inertia of the body, usually in kg\*m^2

### [Body\_GetShapeCount ¶](#Body_GetShapeCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L932)

```
Body_GetShapeCount :: proc "c" (bodyId: BodyId) -> i32 ---
```

 

Get the number of shapes on this body

### [Body\_GetShapes ¶](#Body_GetShapes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L948)

```
Body_GetShapes :: proc "c" (bodyId: BodyId, shapeArray: []ShapeId) -> []ShapeId {…}
```

 

Get the shape ids for all shapes on this body, up to the provided capacity.

```
@returns the shape ids stored in the user array
```

### [Body\_GetSleepThreshold ¶](#Body_GetSleepThreshold) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L895)

```
Body_GetSleepThreshold :: proc "c" (bodyId: BodyId) -> f32 ---
```

 

Get the sleep threshold, usually in meters per second.

### [Body\_GetTransform ¶](#Body_GetTransform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L735)

```
Body_GetTransform :: proc "c" (bodyId: BodyId) -> Transform ---
```

 

Get the world transform of a body.

### [Body\_GetType ¶](#Body_GetType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L710)

```
Body_GetType :: proc "c" (bodyId: BodyId) -> BodyType ---
```

 

Get the body type: static, kinematic, or dynamic

### [Body\_GetUserData ¶](#Body_GetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L726)

```
Body_GetUserData :: proc "c" (bodyId: BodyId) -> rawptr ---
```

 

Get the user data stored in a body

### [Body\_GetWorld ¶](#Body_GetWorld) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L929)

```
Body_GetWorld :: proc "c" (bodyId: BodyId) -> WorldId ---
```

 

Get the world that owns this body

### [Body\_GetWorldCenterOfMass ¶](#Body_GetWorldCenterOfMass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L841)

```
Body_GetWorldCenterOfMass :: proc "c" (bodyId: BodyId) -> [2]f32 ---
```

 

Get the center of mass position of the body in world space

### [Body\_GetWorldPoint ¶](#Body_GetWorldPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L746)

```
Body_GetWorldPoint :: proc "c" (bodyId: BodyId, localPoint: [2]f32) -> [2]f32 ---
```

 

Get a world point on a body given a local point

### [Body\_GetWorldPointVelocity ¶](#Body_GetWorldPointVelocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L776)

```
Body_GetWorldPointVelocity :: proc "c" (bodyId: BodyId, worldPoint: [2]f32) -> [2]f32 ---
```

 

Get the linear velocity of a world point attached to a body. Usually in meters per second.

### [Body\_GetWorldVector ¶](#Body_GetWorldVector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L752)

```
Body_GetWorldVector :: proc "c" (bodyId: BodyId, localVector: [2]f32) -> [2]f32 ---
```

 

Get a world vector on a body given a local vector

### [Body\_IsAwake ¶](#Body_IsAwake) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L878)

```
Body_IsAwake :: proc "c" (bodyId: BodyId) -> bool ---
```

 

@return true if this body is awake

### [Body\_IsBullet ¶](#Body_IsBullet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L917)

```
Body_IsBullet :: proc "c" (bodyId: BodyId) -> bool ---
```

 

Is this body a bullet?

### [Body\_IsEnabled ¶](#Body_IsEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L898)

```
Body_IsEnabled :: proc "c" (bodyId: BodyId) -> bool ---
```

 

Returns true if this body is enabled

### [Body\_IsFixedRotation ¶](#Body_IsFixedRotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L910)

```
Body_IsFixedRotation :: proc "c" (bodyId: BodyId) -> bool ---
```

 

Does this body have fixed rotation?

### [Body\_IsSleepEnabled ¶](#Body_IsSleepEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L889)

```
Body_IsSleepEnabled :: proc "c" (bodyId: BodyId) -> bool ---
```

 

Returns true if sleeping is enabled for this body

### [Body\_IsValid ¶](#Body_IsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L707)

```
Body_IsValid :: proc "c" (id: BodyId) -> bool ---
```

 

Body identifier validation. Can be used to detect orphaned ids. Provides validation for up to 64K allocations.




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [Body\_SetAngularDamping ¶](#Body_SetAngularDamping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L865)

```
Body_SetAngularDamping :: proc "c" (bodyId: BodyId, angularDamping: f32) ---
```

 

Adjust the angular damping. Normally this is set in BodyDef before creation.

### [Body\_SetAngularVelocity ¶](#Body_SetAngularVelocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L764)

```
Body_SetAngularVelocity :: proc "c" (bodyId: BodyId, angularVelocity: f32) ---
```

 

Set the angular velocity of a body in radians per second

### [Body\_SetAwake ¶](#Body_SetAwake) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L883)

```
Body_SetAwake :: proc "c" (bodyId: BodyId, awake: bool) ---
```

 

Wake a body from sleep. This wakes the entire island the body is touching.

```
@warning Putting a body to sleep will put the entire island of bodies touching this body to sleep,
which can be expensive and possibly unintuitive.
```

### [Body\_SetBullet ¶](#Body_SetBullet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L914)

```
Body_SetBullet :: proc "c" (bodyId: BodyId, flag: bool) ---
```

 

Set this body to be a bullet. A bullet does continuous collision detection
against dynamic bodies (but not other bullets).

### [Body\_SetFixedRotation ¶](#Body_SetFixedRotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L907)

```
Body_SetFixedRotation :: proc "c" (bodyId: BodyId, flag: bool) ---
```

 

Set this body to have fixed rotation. This causes the mass to be reset in all cases.

### [Body\_SetGravityScale ¶](#Body_SetGravityScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L872)

```
Body_SetGravityScale :: proc "c" (bodyId: BodyId, gravityScale: f32) ---
```

 

Adjust the gravity scale. Normally this is set in BodyDef before creation.

```
@see BodyDef::gravityScale
```

### [Body\_SetLinearDamping ¶](#Body_SetLinearDamping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L859)

```
Body_SetLinearDamping :: proc "c" (bodyId: BodyId, linearDamping: f32) ---
```

 

Adjust the linear damping. Normally this is set in BodyDef before creation.

### [Body\_SetLinearVelocity ¶](#Body_SetLinearVelocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L761)

```
Body_SetLinearVelocity :: proc "c" (bodyId: BodyId, linearVelocity: [2]f32) ---
```

 

Set the linear velocity of a body. Usually in meters per second.

### [Body\_SetMassData ¶](#Body_SetMassData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L846)

```
Body_SetMassData :: proc "c" (bodyId: BodyId, massData: MassData) ---
```

 

Override the body's mass properties. Normally this is computed automatically using the

```
shape geometry and density. This information is lost if a shape is added or removed or if the
body type changes.
```

### [Body\_SetName ¶](#Body_SetName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L717)

```
Body_SetName :: proc "c" (bodyId: BodyId, name: cstring) ---
```

 

Set the body name. Up to 32 characters excluding 0 termination.

### [Body\_SetSleepThreshold ¶](#Body_SetSleepThreshold) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L892)

```
Body_SetSleepThreshold :: proc "c" (bodyId: BodyId, sleepThreshold: f32) ---
```

 

Set the sleep threshold, usually in meters per second

### [Body\_SetTargetTransform ¶](#Body_SetTargetTransform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L770)

```
Body_SetTargetTransform :: proc "c" (bodyId: BodyId, target: Transform, timeStep: f32) ---
```

 

Set the velocity to reach the given transform after a given time step.
The result will be close but maybe not exact. This is meant for kinematic bodies.
The target is not applied if the velocity would be below the sleep threshold.
This will automatically wake the body if asleep.

### [Body\_SetTransform ¶](#Body_SetTransform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L740)

```
Body_SetTransform :: proc "c" (bodyId: BodyId, position: [2]f32, rotation: Rot) ---
```

 

Set the world transform of a body. This acts as a teleport and is fairly expensive.
@note Generally you should create a body with then intended transform.

```
@see BodyDef::position and BodyDef::angle
```

### [Body\_SetType ¶](#Body_SetType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L714)

```
Body_SetType :: proc "c" (bodyId: BodyId, type: BodyType) ---
```

 

Change the body type. This is an expensive operation. This automatically updates the mass

```
properties regardless of the automatic mass setting.
```

### [Body\_SetUserData ¶](#Body_SetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L723)

```
Body_SetUserData :: proc "c" (bodyId: BodyId, userData: rawptr) ---
```

 

Set the user data for a body

### [Chain\_GetFriction ¶](#Chain_GetFriction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1220)

```
Chain_GetFriction :: proc "c" (chainId: ChainId) -> f32 ---
```

 

Get the chain friction

### [Chain\_GetMaterial ¶](#Chain_GetMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1234)

```
Chain_GetMaterial :: proc "c" (chainId: ChainId) -> i32 ---
```

 

Get the chain material

### [Chain\_GetRestitution ¶](#Chain_GetRestitution) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1227)

```
Chain_GetRestitution :: proc "c" (chainId: ChainId) -> f32 ---
```

 

Get the chain restitution

### [Chain\_GetSegmentCount ¶](#Chain_GetSegmentCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1209)

```
Chain_GetSegmentCount :: proc "c" (chainId: ChainId) -> i32 ---
```

 

Get the number of segments on this chain

### [Chain\_GetSegments ¶](#Chain_GetSegments) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1213)

```
Chain_GetSegments :: proc "c" (chainId: ChainId, segmentArray: [^]ShapeId, capacity: i32) -> i32 ---
```

 

Fill a user array with chain segment shape ids up to the specified capacity. Returns
the actual number of segments returned.

### [Chain\_GetWorld ¶](#Chain_GetWorld) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1206)

```
Chain_GetWorld :: proc "c" (chainId: ChainId) -> WorldId ---
```

 

Get the world that owns this chain shape

### [Chain\_IsValid ¶](#Chain_IsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1237)

```
Chain_IsValid :: proc "c" (id: ChainId) -> bool ---
```

 

Chain identifier validation. Provides validation for up to 64K allocations.




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [Chain\_SetFriction ¶](#Chain_SetFriction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1217)

```
Chain_SetFriction :: proc "c" (chainId: ChainId, friction: f32) ---
```

 

Set the chain friction
@see b2ChainDef::friction

### [Chain\_SetMaterial ¶](#Chain_SetMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1231)

```
Chain_SetMaterial :: proc "c" (chainId: ChainId, material: i32) ---
```

 

Set the chain material
@see b2ChainDef::material

### [Chain\_SetRestitution ¶](#Chain_SetRestitution) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1224)

```
Chain_SetRestitution :: proc "c" (chainId: ChainId, restitution: f32) ---
```

 

Set the chain restitution (bounciness)
@see b2ChainDef::restitution

### [Clamp ¶](#Clamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L217)

```
Clamp :: proc "c" (v: [2]f32, a, b: [2]f32) -> (c: [2]f32) {…}
```

 

Component-wise clamp vector v into the range [a, b]

### [ClampFloat ¶](#ClampFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L91)

```
ClampFloat :: proc "c" (a, lower, upper: f32) -> f32 {…}
```

 

@return a f32 clamped between a lower and upper bound

### [ClampInt ¶](#ClampInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L66)

```
ClampInt :: proc "c" (a, lower, upper: i32) -> i32 {…}
```

 

@return an integer clamped between a lower and upper bound

### [ClipVector ¶](#ClipVector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L495)

```
ClipVector :: proc(vector: [2]f32, planes: []CollisionPlane) -> [2]f32 {…}
```

### [CollideCapsuleAndCircle ¶](#CollideCapsuleAndCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L355)

```
CollideCapsuleAndCircle :: proc "c" (#by_ptr capsuleA: Capsule, xfA: Transform, #by_ptr circleB: Circle, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between a capsule and circle

### [CollideCapsules ¶](#CollideCapsules) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L364)

```
CollideCapsules :: proc "c" (#by_ptr capsuleA: Capsule, xfA: Transform, #by_ptr capsuleB: Capsule, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between a capsule and circle

### [CollideChainSegmentAndCapsule ¶](#CollideChainSegmentAndCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L382)

```
CollideChainSegmentAndCapsule :: proc "c" (#by_ptr segmentA: ChainSegment, xfA: Transform, #by_ptr capsuleB: Capsule, xfB: Transform, cache: ^SimplexCache) -> Manifold ---
```

 

Compute the contact manifold between an segment and a capsule

### [CollideChainSegmentAndCircle ¶](#CollideChainSegmentAndCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L379)

```
CollideChainSegmentAndCircle :: proc "c" (#by_ptr segmentA: ChainSegment, xfA: Transform, #by_ptr circleB: Circle, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between a chain segment and a circle

### [CollideChainSegmentAndPolygon ¶](#CollideChainSegmentAndPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L385)

```
CollideChainSegmentAndPolygon :: proc "c" (#by_ptr segmentA: ChainSegment, xfA: Transform, #by_ptr polygonB: Polygon, xfB: Transform, cache: ^SimplexCache) -> Manifold ---
```

 

Compute the contact manifold between a chain segment and a rounded polygon

### [CollideCircles ¶](#CollideCircles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L352)

```
CollideCircles :: proc "c" (#by_ptr circleA: Circle, xfA: Transform, #by_ptr circleB: Circle, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between two circles

### [CollidePolygonAndCapsule ¶](#CollidePolygonAndCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L370)

```
CollidePolygonAndCapsule :: proc "c" (#by_ptr polygonA: Polygon, xfA: Transform, #by_ptr capsuleB: Capsule, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between a polygon and capsule

### [CollidePolygonAndCircle ¶](#CollidePolygonAndCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L361)

```
CollidePolygonAndCircle :: proc "c" (#by_ptr polygonA: Polygon, xfA: Transform, #by_ptr circleB: Circle, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between a polygon and a circle

### [CollidePolygons ¶](#CollidePolygons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L373)

```
CollidePolygons :: proc "c" (#by_ptr polygonA: Polygon, xfA: Transform, #by_ptr polygonB: Polygon, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between two polygons

### [CollideSegmentAndCapsule ¶](#CollideSegmentAndCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L367)

```
CollideSegmentAndCapsule :: proc "c" (#by_ptr segmentA: Segment, xfA: Transform, #by_ptr capsuleB: Capsule, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between an segment and a capsule

### [CollideSegmentAndCircle ¶](#CollideSegmentAndCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L358)

```
CollideSegmentAndCircle :: proc "c" (#by_ptr segmentA: Segment, xfA: Transform, #by_ptr circleB: Circle, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between an segment and a circle

### [CollideSegmentAndPolygon ¶](#CollideSegmentAndPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L376)

```
CollideSegmentAndPolygon :: proc "c" (#by_ptr segmentA: Segment, xfA: Transform, #by_ptr polygonB: Polygon, xfB: Transform) -> Manifold ---
```

 

Compute the contact manifold between an segment and a polygon

### [ComputeAngularVelocity ¶](#ComputeAngularVelocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L351)

```
ComputeAngularVelocity :: proc "c" (q1: Rot, q2: Rot, inv_h: f32) -> f32 {…}
```

 

Compute the angular velocity necessary to rotate between two rotations over a give time

```
@param q1 initial rotation
@param q2 final rotation
@param inv_h inverse time step
```

### [ComputeCapsuleAABB ¶](#ComputeCapsuleAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L226)

```
ComputeCapsuleAABB :: proc "c" (#by_ptr shape: Capsule, transform: Transform) -> AABB ---
```

 

Compute the bounding box of a transformed capsule

### [ComputeCapsuleMass ¶](#ComputeCapsuleMass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L217)

```
ComputeCapsuleMass :: proc "c" (#by_ptr shape: Capsule, density: f32) -> MassData ---
```

 

Compute mass properties of a capsule

### [ComputeCircleAABB ¶](#ComputeCircleAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L223)

```
ComputeCircleAABB :: proc "c" (#by_ptr shape: Circle, transform: Transform) -> AABB ---
```

 

Compute the bounding box of a transformed circle

### [ComputeCircleMass ¶](#ComputeCircleMass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L214)

```
ComputeCircleMass :: proc "c" (#by_ptr shape: Circle, density: f32) -> MassData ---
```

 

Compute mass properties of a circle

### [ComputeCosSin ¶](#ComputeCosSin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L101)

```
ComputeCosSin :: proc "c" (radians: f32) -> (res: CosSin) {…}
```

### [ComputeHull ¶](#ComputeHull) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L279)

```
ComputeHull :: proc "c" (points: [][2]f32) -> Hull {…}
```

 

Compute the convex hull of a set of points. Returns an empty hull if it fails.
Some failure cases:
all points very close together
all points on a line
less than 3 points
more than MAX\_POLYGON\_VERTICES points
This welds close points and removes collinear points.

```
@warning Do not modify a hull once it has been computed
```

### [ComputePolygonAABB ¶](#ComputePolygonAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L229)

```
ComputePolygonAABB :: proc "c" (#by_ptr shape: Polygon, transform: Transform) -> AABB ---
```

 

Compute the bounding box of a transformed polygon

### [ComputePolygonMass ¶](#ComputePolygonMass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L220)

```
ComputePolygonMass :: proc "c" (#by_ptr shape: Polygon, density: f32) -> MassData ---
```

 

Compute mass properties of a polygon

### [ComputeRotationBetweenUnitVectors ¶](#ComputeRotationBetweenUnitVectors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L311)

```
ComputeRotationBetweenUnitVectors :: proc(v1, v2: [2]f32) -> Rot {…}
```

 

Compute the rotation between two unit vectors

### [ComputeSegmentAABB ¶](#ComputeSegmentAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L232)

```
ComputeSegmentAABB :: proc "c" (#by_ptr shape: Segment, transform: Transform) -> AABB ---
```

 

Compute the bounding box of a transformed line segment

### [CreateBody ¶](#CreateBody) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L700)

```
CreateBody :: proc "c" (worldId: WorldId, #by_ptr def: BodyDef) -> BodyId ---
```

 

Create a rigid body given a definition. No reference to the definition is retained. So you can create the definition

```
on the stack and pass it as a pointer.
@code{.odin}
body_def := b2.DefaultBodyDef()
my_body_id =: b2.CreateBody(my_world_id, body_def)
@endcode
```

@warning This function is locked during callbacks.

### [CreateCapsuleShape ¶](#CreateCapsuleShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1001)

```
CreateCapsuleShape :: proc "c" (bodyId: BodyId, #by_ptr def: ShapeDef, #by_ptr capsule: Capsule) -> ShapeId ---
```

 

Create a capsule shape and attach it to a body. The shape definition and geometry are fully cloned.
Contacts are not created until the next time step.

```
@return the shape id for accessing the shape
```

### [CreateChain ¶](#CreateChain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1200)

```
CreateChain :: proc "c" (bodyId: BodyId, #by_ptr def: ChainDef) -> ChainId ---
```

 

Create a chain shape

```
@see b2ChainDef for details
```

### [CreateCircleShape ¶](#CreateCircleShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L991)

```
CreateCircleShape :: proc "c" (bodyId: BodyId, #by_ptr def: ShapeDef, #by_ptr circle: Circle) -> ShapeId ---
```

 

Create a circle shape and attach it to a body. The shape definition and geometry are fully cloned.
Contacts are not created until the next time step.

```
@return the shape id for accessing the shape
```

### [CreateDistanceJoint ¶](#CreateDistanceJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1329)

```
CreateDistanceJoint :: proc "c" (worldId: WorldId, #by_ptr def: DistanceJointDef) -> JointId ---
```

 

Create a distance joint

```
@see b2DistanceJointDef for details
```

### [CreateFilterJoint ¶](#CreateFilterJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1498)

```
CreateFilterJoint :: proc "c" (worldId: WorldId, #by_ptr def: FilterJointDef) -> JointId ---
```

 

Create a filter joint.
@see b2FilterJointDef for details

### [CreateMotorJoint ¶](#CreateMotorJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1408)

```
CreateMotorJoint :: proc "c" (worldId: WorldId, #by_ptr def: MotorJointDef) -> JointId ---
```

 

Create a motor joint

```
@see b2MotorJointDef for details
```

### [CreateMouseJoint ¶](#CreateMouseJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1453)

```
CreateMouseJoint :: proc "c" (worldId: WorldId, #by_ptr def: MouseJointDef) -> JointId ---
```

 

Create a mouse joint

```
@see b2MouseJointDef for details
```

### [CreatePolygonShape ¶](#CreatePolygonShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1006)

```
CreatePolygonShape :: proc "c" (bodyId: BodyId, #by_ptr def: ShapeDef, #by_ptr polygon: Polygon) -> ShapeId ---
```

 

Create a polygon shape and attach it to a body. The shape definition and geometry are fully cloned.
Contacts are not created until the next time step.

```
@return the shape id for accessing the shape
```

### [CreatePrismaticJoint ¶](#CreatePrismaticJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1512)

```
CreatePrismaticJoint :: proc "c" (worldId: WorldId, #by_ptr def: PrismaticJointDef) -> JointId ---
```

 

Create a prismatic (slider) joint.

```
@see b2PrismaticJointDef for details
```

### [CreateRevoluteJoint ¶](#CreateRevoluteJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1586)

```
CreateRevoluteJoint :: proc "c" (worldId: WorldId, #by_ptr def: RevoluteJointDef) -> JointId ---
```

 

Create a revolute joint

```
@see b2RevoluteJointDef for details
```

### [CreateSegmentShape ¶](#CreateSegmentShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L996)

```
CreateSegmentShape :: proc "c" (bodyId: BodyId, #by_ptr def: ShapeDef, #by_ptr segment: Segment) -> ShapeId ---
```

 

Create a line segment shape and attach it to a body. The shape definition and geometry are fully cloned.
Contacts are not created until the next time step.

```
@return the shape id for accessing the shape
```

### [CreateWeldJoint ¶](#CreateWeldJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1667)

```
CreateWeldJoint :: proc "c" (worldId: WorldId, #by_ptr def: WeldJointDef) -> JointId ---
```

 

Create a weld joint

```
@see b2WeldJointDef for details
```

### [CreateWheelJoint ¶](#CreateWheelJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1704)

```
CreateWheelJoint :: proc "c" (worldId: WorldId, #by_ptr def: WheelJointDef) -> JointId ---
```

 

Create a wheel joint

```
@see b2WheelJointDef for details
```

### [CreateWorld ¶](#CreateWorld) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L521)

```
CreateWorld :: proc "c" (#by_ptr def: WorldDef) -> WorldId ---
```

 

Create a world for rigid body simulation. A world contains bodies, shapes, and constraints. You make create

```
up to 128 worlds. Each world is completely independent and may be simulated in parallel.
@return the world id.
```

### [Cross ¶](#Cross) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L114)

```
Cross :: proc "c" (a, b: [2]f32) -> f32 {…}
```

 

Vector cross product. In 2D this yields a scalar.

### [CrossSV ¶](#CrossSV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L126)

```
CrossSV :: proc "c" (s: f32, v: [2]f32) -> [2]f32 {…}
```

 

Perform the cross product on a scalar and a vector. In 2D this produces a vector.

### [CrossVS ¶](#CrossVS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L120)

```
CrossVS :: proc "c" (v: [2]f32, s: f32) -> [2]f32 {…}
```

 

Perform the cross product on a vector and a scalar. In 2D this produces a vector.

### [DefaultBodyDef ¶](#DefaultBodyDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L113)

```
DefaultBodyDef :: proc "c" () -> BodyDef ---
```

 

Use this to initialize your body definition
@ingroup body

### [DefaultChainDef ¶](#DefaultChainDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L133)

```
DefaultChainDef :: proc "c" () -> ChainDef ---
```

 

Use this to initialize your chain definition
@ingroup shape

### [DefaultDebugDraw ¶](#DefaultDebugDraw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L173)

```
DefaultDebugDraw :: proc "c" () -> DebugDraw ---
```

 

Use this to initialize your drawing interface. This allows you to implement a sub-set
of the drawing functions.

### [DefaultDistanceJointDef ¶](#DefaultDistanceJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L137)

```
DefaultDistanceJointDef :: proc "c" () -> DistanceJointDef ---
```

 

Use this to initialize your joint definition
@ingroup distance\_joint

### [DefaultExplosionDef ¶](#DefaultExplosionDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L169)

```
DefaultExplosionDef :: proc "c" () -> ExplosionDef ---
```

 

Use this to initialize your explosion definition
@ingroup world

### [DefaultFilter ¶](#DefaultFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L117)

```
DefaultFilter :: proc "c" () -> Filter ---
```

 

Use this to initialize your filter
@ingroup shape

### [DefaultFilterJointDef ¶](#DefaultFilterJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L149)

```
DefaultFilterJointDef :: proc "c" () -> FilterJointDef ---
```

 

Use this to initialize your joint definition
@ingroup filter\_joint

### [DefaultMotorJointDef ¶](#DefaultMotorJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L141)

```
DefaultMotorJointDef :: proc "c" () -> MotorJointDef ---
```

 

Use this to initialize your joint definition
@ingroup motor\_joint

### [DefaultMouseJointDef ¶](#DefaultMouseJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L145)

```
DefaultMouseJointDef :: proc "c" () -> MouseJointDef ---
```

 

Use this to initialize your joint definition
@ingroup mouse\_joint

### [DefaultPrismaticJointDef ¶](#DefaultPrismaticJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L153)

```
DefaultPrismaticJointDef :: proc "c" () -> PrismaticJointDef ---
```

 

Use this to initialize your joint definition
@ingroupd prismatic\_joint

### [DefaultQueryFilter ¶](#DefaultQueryFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L121)

```
DefaultQueryFilter :: proc "c" () -> QueryFilter ---
```

 

Use this to initialize your query filter
@ingroup shape

### [DefaultRevoluteJointDef ¶](#DefaultRevoluteJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L157)

```
DefaultRevoluteJointDef :: proc "c" () -> RevoluteJointDef ---
```

 

Use this to initialize your joint definition.
@ingroup revolute\_joint

### [DefaultShapeDef ¶](#DefaultShapeDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L129)

```
DefaultShapeDef :: proc "c" () -> ShapeDef ---
```

 

Use this to initialize your shape definition
@ingroup shape

### [DefaultSurfaceMaterial ¶](#DefaultSurfaceMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L125)

```
DefaultSurfaceMaterial :: proc "c" () -> SurfaceMaterial ---
```

 

Use this to initialize your surface material
@ingroup shape

### [DefaultWeldJointDef ¶](#DefaultWeldJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L161)

```
DefaultWeldJointDef :: proc "c" () -> WeldJointDef ---
```

 

Use this to initialize your joint definition
@ingroup weld\_joint

### [DefaultWheelJointDef ¶](#DefaultWheelJointDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L165)

```
DefaultWheelJointDef :: proc "c" () -> WheelJointDef ---
```

 

Use this to initialize your joint definition
@ingroup wheel\_joint

### [DefaultWorldDef ¶](#DefaultWorldDef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L109)

```
DefaultWorldDef :: proc "c" () -> WorldDef ---
```

 

Use this to initialize your world definition
@ingroup world

### [DestroyBody ¶](#DestroyBody) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L704)

```
DestroyBody :: proc "c" (bodyId: BodyId) ---
```

 

Destroy a rigid body given an id. This destroys all shapes and joints attached to the body.

```
Do not keep references to the associated shapes and joints.
```

### [DestroyChain ¶](#DestroyChain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1203)

```
DestroyChain :: proc "c" (chainId: ChainId) ---
```

 

Destroy a chain shape

### [DestroyJoint ¶](#DestroyJoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1245)

```
DestroyJoint :: proc "c" (jointId: JointId) ---
```

 

Destroy a joint

### [DestroyShape ¶](#DestroyShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1011)

```
DestroyShape :: proc "c" (shapeId: ShapeId, updateBodyMass: bool) ---
```

 

Destroy a shape. You may defer the body mass update which can improve performance if several shapes on a

```
body are destroyed at once.
@see b2Body_ApplyMassFromShapes
```

### [DestroyWorld ¶](#DestroyWorld) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L524)

```
DestroyWorld :: proc "c" (worldId: WorldId) ---
```

 

Destroy a world

### [Distance ¶](#Distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L231)

```
Distance :: proc "c" (a, b: [2]f32) -> f32 {…}
```

 

Get the distance between two points

### [DistanceJoint\_EnableLimit ¶](#DistanceJoint_EnableLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1359)

```
DistanceJoint_EnableLimit :: proc "c" (jointId: JointId, enableLimit: bool) ---
```

 

Enable joint limit. The limit only works if the joint spring is enabled. Otherwise the joint is rigid

```
and the limit has no effect.
```

### [DistanceJoint\_EnableMotor ¶](#DistanceJoint_EnableMotor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1377)

```
DistanceJoint_EnableMotor :: proc "c" (jointId: JointId, enableMotor: bool) ---
```

 

Enable/disable the distance joint motor

### [DistanceJoint\_EnableSpring ¶](#DistanceJoint_EnableSpring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1340)

```
DistanceJoint_EnableSpring :: proc "c" (jointId: JointId, enableSpring: bool) ---
```

 

Enable/disable the distance joint spring. When disabled the distance joint is rigid.

### [DistanceJoint\_GetCurrentLength ¶](#DistanceJoint_GetCurrentLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1374)

```
DistanceJoint_GetCurrentLength :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the current length of a distance joint

### [DistanceJoint\_GetLength ¶](#DistanceJoint_GetLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1337)

```
DistanceJoint_GetLength :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the rest length of a distance joint

### [DistanceJoint\_GetMaxLength ¶](#DistanceJoint_GetMaxLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1371)

```
DistanceJoint_GetMaxLength :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the distance joint maximum length

### [DistanceJoint\_GetMaxMotorForce ¶](#DistanceJoint_GetMaxMotorForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1392)

```
DistanceJoint_GetMaxMotorForce :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the distance joint maximum motor force, usually in newtons

### [DistanceJoint\_GetMinLength ¶](#DistanceJoint_GetMinLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1368)

```
DistanceJoint_GetMinLength :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the distance joint minimum length

### [DistanceJoint\_GetMotorForce ¶](#DistanceJoint_GetMotorForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1395)

```
DistanceJoint_GetMotorForce :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the distance joint current motor force, usually in newtons

### [DistanceJoint\_GetMotorSpeed ¶](#DistanceJoint_GetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1386)

```
DistanceJoint_GetMotorSpeed :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the distance joint motor speed, usually in meters per second

### [DistanceJoint\_GetSpringDampingRatio ¶](#DistanceJoint_GetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1355)

```
DistanceJoint_GetSpringDampingRatio :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the spring damping ratio

### [DistanceJoint\_GetSpringHertz ¶](#DistanceJoint_GetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1352)

```
DistanceJoint_GetSpringHertz :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the spring Hertz

### [DistanceJoint\_IsLimitEnabled ¶](#DistanceJoint_IsLimitEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1362)

```
DistanceJoint_IsLimitEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the distance joint limit enabled?

### [DistanceJoint\_IsMotorEnabled ¶](#DistanceJoint_IsMotorEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1380)

```
DistanceJoint_IsMotorEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the distance joint motor enabled?

### [DistanceJoint\_IsSpringEnabled ¶](#DistanceJoint_IsSpringEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1343)

```
DistanceJoint_IsSpringEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the distance joint spring enabled?

### [DistanceJoint\_SetLength ¶](#DistanceJoint_SetLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1334)

```
DistanceJoint_SetLength :: proc "c" (jointId: JointId, length: f32) ---
```

 

Set the rest length of a distance joint
@param jointId The id for a distance joint
@param length The new distance joint length

### [DistanceJoint\_SetLengthRange ¶](#DistanceJoint_SetLengthRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1365)

```
DistanceJoint_SetLengthRange :: proc "c" (jointId: JointId, minLength, maxLength: f32) ---
```

 

Set the minimum and maximum length parameters of a distance joint

### [DistanceJoint\_SetMaxMotorForce ¶](#DistanceJoint_SetMaxMotorForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1389)

```
DistanceJoint_SetMaxMotorForce :: proc "c" (jointId: JointId, force: f32) ---
```

 

Set the distance joint maximum motor force, usually in newtons

### [DistanceJoint\_SetMotorSpeed ¶](#DistanceJoint_SetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1383)

```
DistanceJoint_SetMotorSpeed :: proc "c" (jointId: JointId, motorSpeed: f32) ---
```

 

Set the distance joint motor speed, usually in meters per second

### [DistanceJoint\_SetSpringDampingRatio ¶](#DistanceJoint_SetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1349)

```
DistanceJoint_SetSpringDampingRatio :: proc "c" (jointId: JointId, dampingRatio: f32) ---
```

 

Set the spring damping ratio, non-dimensional

### [DistanceJoint\_SetSpringHertz ¶](#DistanceJoint_SetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1346)

```
DistanceJoint_SetSpringHertz :: proc "c" (jointId: JointId, hertz: f32) ---
```

 

Set the spring stiffness in Hertz

### [DistanceSquared ¶](#DistanceSquared) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L297)

```
DistanceSquared :: proc "c" (a, b: [2]f32) -> f32 {…}
```

 

Get the distance squared between points

### [Dot ¶](#Dot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L108)

```
Dot :: proc "c" (a, b: [2]f32) -> f32 {…}
```

 

Vector dot product

### [DynamicTree\_Create ¶](#DynamicTree_Create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L393)

```
DynamicTree_Create :: proc "c" () -> DynamicTree ---
```

 

Constructing the tree initializes the node pool.

### [DynamicTree\_CreateProxy ¶](#DynamicTree_CreateProxy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L399)

```
DynamicTree_CreateProxy :: proc "c" (tree: ^DynamicTree, aabb: AABB, categoryBits: u64, userData: u64) -> i32 ---
```

 

Create a proxy. Provide an AABB and a userData value.

### [DynamicTree\_Destroy ¶](#DynamicTree_Destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L396)

```
DynamicTree_Destroy :: proc "c" (tree: ^DynamicTree) ---
```

 

Destroy the tree, freeing the node pool.

### [DynamicTree\_DestroyProxy ¶](#DynamicTree_DestroyProxy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L402)

```
DynamicTree_DestroyProxy :: proc "c" (tree: ^DynamicTree, proxyId: i32) ---
```

 

Destroy a proxy. This asserts if the id is invalid.

### [DynamicTree\_EnlargeProxy ¶](#DynamicTree_EnlargeProxy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L408)

```
DynamicTree_EnlargeProxy :: proc "c" (tree: ^DynamicTree, proxyId: i32, aabb: AABB) ---
```

 

Enlarge a proxy and enlarge ancestors as necessary.

### [DynamicTree\_GetAABB ¶](#DynamicTree_GetAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L470)

```
DynamicTree_GetAABB :: proc "c" (#by_ptr tree: DynamicTree, proxyId: i32) -> AABB ---
```

 

Get the AABB of a proxy

### [DynamicTree\_GetAreaRatio ¶](#DynamicTree_GetAreaRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L452)

```
DynamicTree_GetAreaRatio :: proc "c" (#by_ptr tree: DynamicTree) -> f32 ---
```

 

Get the ratio of the sum of the node areas to the root area.

### [DynamicTree\_GetByteCount ¶](#DynamicTree_GetByteCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L464)

```
DynamicTree_GetByteCount :: proc "c" (#by_ptr tree: DynamicTree) -> i32 ---
```

 

Get the number of bytes used by this tree

### [DynamicTree\_GetCategoryBits ¶](#DynamicTree_GetCategoryBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L414)

```
DynamicTree_GetCategoryBits :: proc "c" (tree: ^DynamicTree, proxyId: i32) ---
```

 

Get the category bits on a proxy.

### [DynamicTree\_GetHeight ¶](#DynamicTree_GetHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L449)

```
DynamicTree_GetHeight :: proc "c" (#by_ptr tree: DynamicTree) -> i32 ---
```

 

Get the height of the binary tree.

### [DynamicTree\_GetProxyCount ¶](#DynamicTree_GetProxyCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L458)

```
DynamicTree_GetProxyCount :: proc "c" (#by_ptr tree: DynamicTree) -> i32 ---
```

 

Get the number of proxies created

### [DynamicTree\_GetRootBounds ¶](#DynamicTree_GetRootBounds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L455)

```
DynamicTree_GetRootBounds :: proc "c" (#by_ptr tree: DynamicTree) -> AABB ---
```

 

Get the bounding box that contains the entire tree

### [DynamicTree\_GetUserData ¶](#DynamicTree_GetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L467)

```
DynamicTree_GetUserData :: proc "c" (#by_ptr tree: DynamicTree, proxyId: i32) -> u64 ---
```

 

Get proxy user data

### [DynamicTree\_MoveProxy ¶](#DynamicTree_MoveProxy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L405)

```
DynamicTree_MoveProxy :: proc "c" (tree: ^DynamicTree, proxyId: i32, aabb: AABB) ---
```

 

Move a proxy to a new AABB by removing and reinserting into the tree.

### [DynamicTree\_Query ¶](#DynamicTree_Query) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L418)

```
DynamicTree_Query :: proc "c" (#by_ptr tree: DynamicTree, aabb: AABB, maskBits: u64, callback: TreeQueryCallbackFcn, ctx: rawptr) -> TreeStats ---
```

 

Query an AABB for overlapping proxies. The callback class is called for each proxy that overlaps the supplied AABB.

```
@return performance data
```

### [DynamicTree\_RayCast ¶](#DynamicTree_RayCast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L433)

```
DynamicTree_RayCast :: proc "c" (#by_ptr tree: DynamicTree, #by_ptr input: RayCastInput, maskBits: u64, callback: TreeRayCastCallbackFcn, ctx: rawptr) -> TreeStats ---
```

 

Ray cast against the proxies in the tree. This relies on the callback
to perform a exact ray cast in the case were the proxy contains a shape.
The callback also performs the any collision filtering. This has performance
roughly equal to k \* log(n), where k is the number of collisions and n is the
number of proxies in the tree.
Bit-wise filtering using mask bits can greatly improve performance in some scenarios.

```
However, this filtering may be approximate, so the user should still apply filtering to results.
```

@param tree the dynamic tree to ray cast
@param input the ray cast input data. The ray extends from p1 to p1 + maxFraction \* (p2 - p1)
@param maskBits mask bit hint: `bool accept = (maskBits & node->categoryBits) != 0;`
@param callback a callback class that is called for each proxy that is hit by the ray
@param context user context that is passed to the callback

```
@return performance data
```

### [DynamicTree\_Rebuild ¶](#DynamicTree_Rebuild) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L461)

```
DynamicTree_Rebuild :: proc "c" (tree: ^DynamicTree, fullBuild: bool) -> i32 ---
```

 

Rebuild the tree while retaining subtrees that haven't changed. Returns the number of boxes sorted.

### [DynamicTree\_SetCategoryBits ¶](#DynamicTree_SetCategoryBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L411)

```
DynamicTree_SetCategoryBits :: proc "c" (tree: ^DynamicTree, proxyId: i32, categoryBits: u64) ---
```

 

Modify the category bits on a proxy. This is an expensive operation.

### [DynamicTree\_ShapeCast ¶](#DynamicTree_ShapeCast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L446)

```
DynamicTree_ShapeCast :: proc "c" (#by_ptr tree: DynamicTree, #by_ptr input: ShapeCastInput, maskBits: u32, callback: TreeShapeCastCallbackFcn, ctx: rawptr) -> TreeStats ---
```

 

Ray cast against the proxies in the tree. This relies on the callback
to perform a exact ray cast in the case were the proxy contains a shape.
The callback also performs the any collision filtering. This has performance
roughly equal to k \* log(n), where k is the number of collisions and n is the
number of proxies in the tree.

```
@param tree the dynamic tree to ray cast
```

@param input the ray cast input data. The ray extends from p1 to p1 + maxFraction \* (p2 - p1).

```
@param maskBits filter bits: `bool accept = (maskBits & node->categoryBits) != 0 ---`
```

@param callback a callback class that is called for each proxy that is hit by the shape

```
@param context user context that is passed to the callback
@return performance data
```

### [DynamicTree\_Validate ¶](#DynamicTree_Validate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L473)

```
DynamicTree_Validate :: proc "c" (#by_ptr tree: DynamicTree) ---
```

 

Validate this tree. For testing.

### [DynamicTree\_ValidateNoEnlarged ¶](#DynamicTree_ValidateNoEnlarged) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L476)

```
DynamicTree_ValidateNoEnlarged :: proc "c" (#by_ptr tree: DynamicTree) ---
```

 

Validate this tree has no enlarged AABBs. For testing.

### [GetByteCount ¶](#GetByteCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L67)

```
GetByteCount :: proc "c" () -> i32 ---
```

 

@return the total bytes allocated by Box2D

### [GetInverse22 ¶](#GetInverse22) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L482)

```
GetInverse22 :: proc "c" (A: matrix[2, 2]f32) -> matrix[2, 2]f32 {…}
```

 

Get the inverse of a 2-by-2 matrix

### [GetLengthAndNormalize ¶](#GetLengthAndNormalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L264)

```
GetLengthAndNormalize :: proc "c" (v: [2]f32) -> (length: f32, vn: [2]f32) {…}
```

### [GetLengthUnitsPerMeter ¶](#GetLengthUnitsPerMeter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L102)

```
GetLengthUnitsPerMeter :: proc "c" () -> f32 ---
```

 

Get the current length units per meter.

### [GetMilliseconds ¶](#GetMilliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L75)

```
GetMilliseconds :: proc "c" (ticks: u64) -> f32 ---
```

 

Get the milliseconds passed from an initial tick value.

### [GetMillisecondsAndReset ¶](#GetMillisecondsAndReset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L78)

```
GetMillisecondsAndReset :: proc "c" (ticks: ^u64) -> f32 ---
```

 

Get the milliseconds passed from an initial tick value. Resets the passed in
value to the current tick value.

### [GetSweepTransform ¶](#GetSweepTransform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L340)

```
GetSweepTransform :: proc "c" (#by_ptr sweep: Sweep, time: f32) -> Transform ---
```

 

Evaluate the transform sweep at a specific time.

### [GetTicks ¶](#GetTicks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L73)

```
GetTicks :: proc "c" () -> u64 ---
```

 

Get the absolute number of system ticks. The value is platform specific.

### [Hash ¶](#Hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L83)

```
Hash :: proc "c" (hash: u32, data: [^]u8, count: i32) -> u32 ---
```

 

Simple djb2 hash function for determinism testing.

### [ID\_EQUALS ¶](#ID_EQUALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L82)

```
ID_EQUALS :: proc "c" (id1, id2: $T) -> bool {…}
```

 

/ Compare two ids for equality. Doesn't work for b2WorldId.

### [IS\_NON\_NULL ¶](#IS_NON_NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L75)

```
IS_NON_NULL :: proc "c" (id: $T) -> bool {…}
```

 

/ Macro to determine if any id is non-null.

### [IS\_NULL ¶](#IS_NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L68)

```
IS_NULL :: proc "c" (id: $T) -> bool {…}
```

 

/ Macro to determine if any id is null.

### [IntegrateRotation ¶](#IntegrateRotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L278)

```
IntegrateRotation :: proc "c" (q1: Rot, deltaAngle: f32) -> Rot {…}
```

 

Integration rotation from angular velocity

```
@param q1 initial rotation
@param deltaAngle the angular displacement in radians
```

### [InvMulRot ¶](#InvMulRot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L398)

```
InvMulRot :: proc "c" (q, r: Rot) -> (qr: Rot) {…}
```

 

Transpose multiply two rotations: qT \* r

### [InvMulTransforms ¶](#InvMulTransforms) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L468)

```
InvMulTransforms :: proc "c" (A, B: Transform) -> (C: Transform) {…}
```

 

Creates a transform that converts a local point in frame B to a local point in frame A.
v2 = A.q'  *(B.q*  v1 + B.p - A.p)
= A.q'  *B.q*  v1 + A.q' \* (B.p - A.p)

### [InvRotateVector ¶](#InvRotateVector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L432)

```
InvRotateVector :: proc "c" (q: Rot, v: [2]f32) -> [2]f32 {…}
```

 

Inverse rotate a vector

### [InvTransformPoint ¶](#InvTransformPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L446)

```
InvTransformPoint :: proc "c" (t: Transform, p: [2]f32) -> [2]f32 {…}
```

 

Inverse transform a point (e.g. world space to local space)

### [IsNormalized ¶](#IsNormalized) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L248)

```
IsNormalized :: proc "c" (v: [2]f32) -> bool {…}
```

### [IsNormalizedRot ¶](#IsNormalizedRot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L320)

```
IsNormalizedRot :: proc "c" (q: Rot) -> bool {…}
```

 

Is this rotation normalized?

### [IsValidAABB ¶](#IsValidAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L602)

```
IsValidAABB :: proc "c" (aabb: AABB) -> bool {…}
```

 

Is this a valid bounding box? Not Nan or infinity. Upper bound greater than or equal to lower bound.




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [IsValidFloat ¶](#IsValidFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L579)

```
IsValidFloat :: proc "c" (a: f32) -> bool {…}
```

##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [IsValidPlane ¶](#IsValidPlane) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L612)

```
IsValidPlane :: proc "c" (plane: Plane) -> bool {…}
```

 

Is this a valid plane? Normal is a unit vector. Not Nan or infinity.




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [IsValidRay ¶](#IsValidRay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L181)

```
IsValidRay :: proc "c" (#by_ptr input: RayCastInput) -> bool ---
```

 

Validate ray cast input data (NaN, etc)




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [IsValidRotation ¶](#IsValidRotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L594)

```
IsValidRotation :: proc "c" (q: Rot) -> bool {…}
```

##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [IsValidVec2 ¶](#IsValidVec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L587)

```
IsValidVec2 :: proc "c" (v: [2]f32) -> bool {…}
```

##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [Joint\_GetAngularSeparation ¶](#Joint_GetAngularSeparation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1311)

```
Joint_GetAngularSeparation :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the current angular separation error for this joint. Does not consider admissible movement. Usually in meters.

### [Joint\_GetBodyA ¶](#Joint_GetBodyA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1254)

```
Joint_GetBodyA :: proc "c" (jointId: JointId) -> BodyId ---
```

 

Get body A id on a joint

### [Joint\_GetBodyB ¶](#Joint_GetBodyB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1257)

```
Joint_GetBodyB :: proc "c" (jointId: JointId) -> BodyId ---
```

 

Get body B id on a joint

### [Joint\_GetCollideConnected ¶](#Joint_GetCollideConnected) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1290)

```
Joint_GetCollideConnected :: proc "c" (jointId: JointId) -> bool ---
```

 

Is collision allowed between connected bodies?

### [Joint\_GetConstraintForce ¶](#Joint_GetConstraintForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1302)

```
Joint_GetConstraintForce :: proc "c" (jointId: JointId) -> [2]f32 ---
```

 

Get the current constraint force for this joint. Usually in Newtons.

### [Joint\_GetConstraintTorque ¶](#Joint_GetConstraintTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1305)

```
Joint_GetConstraintTorque :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the current constraint torque for this joint. Usually in Newton \* meters.

### [Joint\_GetConstraintTuning ¶](#Joint_GetConstraintTuning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1314)

```
Joint_GetConstraintTuning :: proc "c" (jointId: JointId, hertz: ^f32, dampingRatio: ^f32) ---
```

 

Get the joint constraint tuning. Advanced feature.

### [Joint\_GetLinearSeparation ¶](#Joint_GetLinearSeparation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1308)

```
Joint_GetLinearSeparation :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the current linear separation error for this joint. Does not consider admissible movement. Usually in meters.

### [Joint\_GetLocalAnchorA ¶](#Joint_GetLocalAnchorA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1266)

```
Joint_GetLocalAnchorA :: proc "c" (jointId: JointId) -> [2]f32 ---
```

 

Get the local anchor on bodyA

### [Joint\_GetLocalAnchorB ¶](#Joint_GetLocalAnchorB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1272)

```
Joint_GetLocalAnchorB :: proc "c" (jointId: JointId) -> [2]f32 ---
```

 

Get the local anchor on bodyB

### [Joint\_GetLocalAxisA ¶](#Joint_GetLocalAxisA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1284)

```
Joint_GetLocalAxisA :: proc "c" (jointId: JointId) -> [2]f32 ---
```

 

Get the local axis on bodyA (prismatic and wheel)

### [Joint\_GetReferenceAngle ¶](#Joint_GetReferenceAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1275)

```
Joint_GetReferenceAngle :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the joint reference angle in radians (revolute, prismatic, and weld)

### [Joint\_GetType ¶](#Joint_GetType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1251)

```
Joint_GetType :: proc "c" (jointId: JointId) -> JointType ---
```

 

Get the joint type

### [Joint\_GetUserData ¶](#Joint_GetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1296)

```
Joint_GetUserData :: proc "c" (jointId: JointId) -> rawptr ---
```

 

Get the user data on a joint

### [Joint\_GetWorld ¶](#Joint_GetWorld) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1260)

```
Joint_GetWorld :: proc "c" (jointId: JointId) -> WorldId ---
```

 

Get the world that owns this joint

### [Joint\_IsValid ¶](#Joint_IsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1248)

```
Joint_IsValid :: proc "c" (id: JointId) -> bool ---
```

 

Joint identifier validation. Provides validation for up to 64K allocations.




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [Joint\_SetCollideConnected ¶](#Joint_SetCollideConnected) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1287)

```
Joint_SetCollideConnected :: proc "c" (jointId: JointId, shouldCollide: bool) ---
```

 

Toggle collision between connected bodies

### [Joint\_SetConstraintTuning ¶](#Joint_SetConstraintTuning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1320)

```
Joint_SetConstraintTuning :: proc "c" (jointId: JointId, hertz: f32, dampingRatio: f32) ---
```

 

Set the joint constraint tuning. Advanced feature.
@param jointId the joint
@param hertz the stiffness in Hertz (cycles per second)
@param dampingRatio the non-dimensional damping ratio (one for critical damping)

### [Joint\_SetLocalAnchorA ¶](#Joint_SetLocalAnchorA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1263)

```
Joint_SetLocalAnchorA :: proc "c" (jointId: JointId, localAnchor: [2]f32) ---
```

 

Set the local anchor on bodyA

### [Joint\_SetLocalAnchorB ¶](#Joint_SetLocalAnchorB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1269)

```
Joint_SetLocalAnchorB :: proc "c" (jointId: JointId, localAnchor: [2]f32) ---
```

 

Set the local anchor on bodyB

### [Joint\_SetLocalAxisA ¶](#Joint_SetLocalAxisA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1281)

```
Joint_SetLocalAxisA :: proc "c" (jointId: JointId, localAxis: [2]f32) ---
```

 

Set the local axis on bodyA (prismatic and wheel)

### [Joint\_SetReferenceAngle ¶](#Joint_SetReferenceAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1278)

```
Joint_SetReferenceAngle :: proc "c" (jointId: JointId, angleInRadians: f32) ---
```

 

Set the joint reference angle in radians, must be in [-pi,pi]. (revolute, prismatic, and weld)

### [Joint\_SetUserData ¶](#Joint_SetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1293)

```
Joint_SetUserData :: proc "c" (jointId: JointId, userData: rawptr) ---
```

 

Set the user data on a joint

### [Joint\_WakeBodies ¶](#Joint_WakeBodies) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1299)

```
Joint_WakeBodies :: proc "c" (jointId: JointId) ---
```

 

Wake the bodies connect to this joint

### [LeftPerp ¶](#LeftPerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L132)

```
LeftPerp :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

 

Get a left pointing perpendicular vector. Equivalent to b2CrossSV(1, v)

### [Length ¶](#Length) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L225)

```
Length :: proc "c" (v: [2]f32) -> f32 {…}
```

 

Get the length of this vector (the norm)

### [LengthSquared ¶](#LengthSquared) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L291)

```
LengthSquared :: proc "c" (v: [2]f32) -> f32 {…}
```

 

Get the length squared of this vector

### [Lerp ¶](#Lerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L163)

```
Lerp :: proc "c" (a, b: [2]f32, t: f32) -> [2]f32 {…}
```

 

Vector linear interpolation
https://fgiesen.wordpress.com/2012/08/15/linear-interpolation-past-present-and-future/

### [LoadWorldId ¶](#LoadWorldId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L96)

```
LoadWorldId :: proc "c" (x: u32) -> WorldId {…}
```

 

Load a u32 into a world id.

### [MakeAABB ¶](#MakeAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L558)

```
MakeAABB :: proc "c" (points: [][2]f32, radius: f32) -> AABB {…}
```

 

Compute the bounding box of an array of circles

### [MakeBox ¶](#MakeBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L199)

```
MakeBox :: proc "c" (halfWidth, halfHeight: f32) -> Polygon ---
```

 

Make a box (rectangle) polygon, bypassing the need for a convex hull.

### [MakeOffsetBox ¶](#MakeOffsetBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L205)

```
MakeOffsetBox :: proc "c" (halfWidth, halfHeight: f32, center: [2]f32, rotation: Rot) -> Polygon ---
```

 

Make an offset box, bypassing the need for a convex hull.

### [MakeOffsetPolygon ¶](#MakeOffsetPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L189)

```
MakeOffsetPolygon :: proc "c" (#by_ptr hull: Hull, position: [2]f32, rotation: Rot) -> Polygon ---
```

 

Make an offset convex polygon from a convex hull. This will assert if the hull is not valid.
@warning Do not manually fill in the hull data, it must come directly from b2ComputeHull

### [MakeOffsetProxy ¶](#MakeOffsetProxy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L325)

```
MakeOffsetProxy :: proc "c" (points: [][2]f32, radius: f32, position: [2]f32, rotation: Rot) -> ShapeProxy {…}
```

 

Make a proxy with a transform. This is a deep copy of the points.

### [MakeOffsetRoundedBox ¶](#MakeOffsetRoundedBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L208)

```
MakeOffsetRoundedBox :: proc "c" (halfWidth, halfHeight: f32, center: [2]f32, rotation: Rot, radius: f32) -> Polygon ---
```

 

Make an offset rounded box, bypassing the need for a convex hull.

### [MakeOffsetRoundedPolygon ¶](#MakeOffsetRoundedPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L193)

```
MakeOffsetRoundedPolygon :: proc "c" (#by_ptr hull: Hull, position: [2]f32, rotation: Rot, radius: f32) -> Polygon ---
```

 

Make an offset convex polygon from a convex hull. This will assert if the hull is not valid.
@warning Do not manually fill in the hull data, it must come directly from b2ComputeHull

### [MakePolygon ¶](#MakePolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L185)

```
MakePolygon :: proc "c" (#by_ptr hull: Hull, radius: f32) -> Polygon ---
```

 

Make a convex polygon from a convex hull. This will assert if the hull is not valid.
@warning Do not manually fill in the hull data, it must come directly from b2ComputeHull

### [MakeProxy ¶](#MakeProxy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L316)

```
MakeProxy :: proc "c" (points: [][2]f32, radius: f32) -> ShapeProxy {…}
```

 

Make a proxy for use in overlap, shape cast, and related functions. This is a deep copy of the points.

### [MakeRot ¶](#MakeRot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L304)

```
MakeRot :: proc "c" (angle: f32) -> Rot {…}
```

 

Make a rotation using an angle in radians

### [MakeRoundedBox ¶](#MakeRoundedBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L202)

```
MakeRoundedBox :: proc "c" (halfWidth, halfHeight: f32, radius: f32) -> Polygon ---
```

 

Make a rounded box, bypassing the need for a convex hull.

### [MakeSquare ¶](#MakeSquare) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L196)

```
MakeSquare :: proc "c" (halfWidth: f32) -> Polygon ---
```

 

Make a square polygon, bypassing the need for a convex hull.

### [Max ¶](#Max) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L209)

```
Max :: proc "c" (a, b: [2]f32) -> (c: [2]f32) {…}
```

 

Component-wise maximum vector

### [MaxFloat ¶](#MaxFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L79)

```
MaxFloat :: proc "c" (a, b: f32) -> f32 {…}
```

 

@return the maximum of two floats

### [MaxInt ¶](#MaxInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L54)

```
MaxInt :: proc "c" (a, b: i32) -> i32 {…}
```

 

@return the maximum of two integers

### [Min ¶](#Min) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L201)

```
Min :: proc "c" (a, b: [2]f32) -> (c: [2]f32) {…}
```

 

Component-wise minimum vector

### [MinFloat ¶](#MinFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L73)

```
MinFloat :: proc "c" (a, b: f32) -> f32 {…}
```

 

@return the minimum of two floats

### [MinInt ¶](#MinInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L48)

```
MinInt :: proc "c" (a, b: i32) -> i32 {…}
```

 

@return the minimum of two integers

### [MotorJoint\_GetAngularOffset ¶](#MotorJoint_GetAngularOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1421)

```
MotorJoint_GetAngularOffset :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the motor joint angular offset target in radians

### [MotorJoint\_GetCorrectionFactor ¶](#MotorJoint_GetCorrectionFactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1439)

```
MotorJoint_GetCorrectionFactor :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the motor joint correction factor, usually in [0, 1]

### [MotorJoint\_GetLinearOffset ¶](#MotorJoint_GetLinearOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1414)

```
MotorJoint_GetLinearOffset :: proc "c" (jointId: JointId) -> [2]f32 ---
```

 

Get the motor joint linear offset target

### [MotorJoint\_GetMaxForce ¶](#MotorJoint_GetMaxForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1427)

```
MotorJoint_GetMaxForce :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the motor joint maximum force, usually in newtons

### [MotorJoint\_GetMaxTorque ¶](#MotorJoint_GetMaxTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1433)

```
MotorJoint_GetMaxTorque :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the motor joint maximum torque, usually in newton-meters

### [MotorJoint\_SetAngularOffset ¶](#MotorJoint_SetAngularOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1418)

```
MotorJoint_SetAngularOffset :: proc "c" (jointId: JointId, angularOffset: f32) ---
```

 

Set the motor joint angular offset target in radians. This angle will be unwound
so the motor will drive along the shortest arc.

### [MotorJoint\_SetCorrectionFactor ¶](#MotorJoint_SetCorrectionFactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1436)

```
MotorJoint_SetCorrectionFactor :: proc "c" (jointId: JointId, correctionFactor: f32) ---
```

 

Set the motor joint correction factor, usually in [0, 1]

### [MotorJoint\_SetLinearOffset ¶](#MotorJoint_SetLinearOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1411)

```
MotorJoint_SetLinearOffset :: proc "c" (jointId: JointId, linearOffset: [2]f32) ---
```

 

Set the motor joint linear offset target

### [MotorJoint\_SetMaxForce ¶](#MotorJoint_SetMaxForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1424)

```
MotorJoint_SetMaxForce :: proc "c" (jointId: JointId, maxForce: f32) ---
```

 

Set the motor joint maximum force, usually in newtons

### [MotorJoint\_SetMaxTorque ¶](#MotorJoint_SetMaxTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1430)

```
MotorJoint_SetMaxTorque :: proc "c" (jointId: JointId, maxTorque: f32) ---
```

 

Set the motor joint maximum torque, usually in newton-meters

### [MouseJoint\_GetMaxForce ¶](#MouseJoint_GetMaxForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1483)

```
MouseJoint_GetMaxForce :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the mouse joint maximum force, usually in newtons

### [MouseJoint\_GetSpringDampingRatio ¶](#MouseJoint_GetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1471)

```
MouseJoint_GetSpringDampingRatio :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the mouse joint damping ratio, non-dimensional

### [MouseJoint\_GetSpringHertz ¶](#MouseJoint_GetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1465)

```
MouseJoint_GetSpringHertz :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the mouse joint spring stiffness in Hertz

### [MouseJoint\_GetTarget ¶](#MouseJoint_GetTarget) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1459)

```
MouseJoint_GetTarget :: proc "c" (jointId: JointId) -> [2]f32 ---
```

 

Get the mouse joint target

### [MouseJoint\_SetMaxForce ¶](#MouseJoint_SetMaxForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1480)

```
MouseJoint_SetMaxForce :: proc "c" (jointId: JointId, maxForce: f32) ---
```

 

Set the mouse joint maximum force, usually in newtons

### [MouseJoint\_SetSpringDampingRatio ¶](#MouseJoint_SetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1468)

```
MouseJoint_SetSpringDampingRatio :: proc "c" (jointId: JointId, dampingRatio: f32) ---
```

 

Set the mouse joint spring damping ratio, non-dimensional

### [MouseJoint\_SetSpringHertz ¶](#MouseJoint_SetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1462)

```
MouseJoint_SetSpringHertz :: proc "c" (jointId: JointId, hertz: f32) ---
```

 

Set the mouse joint spring stiffness in Hertz

### [MouseJoint\_SetTarget ¶](#MouseJoint_SetTarget) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1456)

```
MouseJoint_SetTarget :: proc "c" (jointId: JointId, target: [2]f32) ---
```

 

Set the mouse joint target

### [Mul ¶](#Mul) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L169)

```
Mul :: proc "c" (a, b: [2]f32) -> [2]f32 {…}
```

 

Component-wise multiplication

### [MulAdd ¶](#MulAdd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L181)

```
MulAdd :: proc "c" (a: [2]f32, s: f32, b: [2]f32) -> [2]f32 {…}
```

 

a + s \* b

### [MulMV ¶](#MulMV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L476)

```
MulMV :: proc "c" (A: matrix[2, 2]f32, v: [2]f32) -> [2]f32 {…}
```

 

Multiply a 2-by-2 matrix times a 2D vector

### [MulRot ¶](#MulRot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L386)

```
MulRot :: proc "c" (q, r: Rot) -> (qr: Rot) {…}
```

 

Multiply two rotations: q \* r

### [MulSV ¶](#MulSV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L175)

```
MulSV :: proc "c" (s: f32, v: [2]f32) -> [2]f32 {…}
```

 

Multiply a scalar and vector

### [MulSub ¶](#MulSub) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L187)

```
MulSub :: proc "c" (a: [2]f32, s: f32, b: [2]f32) -> [2]f32 {…}
```

 

a - s \* b

### [MulTransforms ¶](#MulTransforms) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L458)

```
MulTransforms :: proc "c" (A, B: Transform) -> (C: Transform) {…}
```

 

Multiply two transforms. If the result is applied to a point p local to frame B,
the transform would first convert p to a point local to frame A, then into a point
in the world frame.
v2 = A.q.Rot(B.q.Rot(v1) + B.p) + A.p
= (A.q \* B.q).Rot(v1) + A.q.Rot(B.p) + A.p

### [NLerp ¶](#NLerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L338)

```
NLerp :: proc "c" (q1: Rot, q2: Rot, t: f32) -> Rot {…}
```

 

Normalized linear interpolation
https://fgiesen.wordpress.com/2012/08/15/linear-interpolation-past-present-and-future/
https://web.archive.org/web/20170825184056/http://number-none.com/product/Understanding%20Slerp,%20Then%20Not%20Using%20It/

### [Neg ¶](#Neg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L156)

```
Neg :: proc "c" (a: [2]f32) -> [2]f32 {…}
```

 

Vector negation

### [Normalize ¶](#Normalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L238)

```
Normalize :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

### [NormalizeChecked ¶](#NormalizeChecked) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L254)

```
NormalizeChecked :: proc(v: [2]f32) -> [2]f32 {…}
```

### [NormalizeRot ¶](#NormalizeRot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L328)

```
NormalizeRot :: proc "c" (q: Rot) -> Rot {…}
```

 

Normalize rotation

### [PlaneSeparation ¶](#PlaneSeparation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L574)

```
PlaneSeparation :: proc "c" (plane: Plane, point: [2]f32) -> f32 {…}
```

 

Signed separation of a point from a plane

### [PointInCapsule ¶](#PointInCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L238)

```
PointInCapsule :: proc "c" (point: [2]f32, #by_ptr shape: Capsule) -> bool ---
```

 

Test a point for overlap with a capsule in local space

### [PointInCircle ¶](#PointInCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L235)

```
PointInCircle :: proc "c" (point: [2]f32, #by_ptr shape: Circle) -> bool ---
```

 

Test a point for overlap with a circle in local space

### [PointInPolygon ¶](#PointInPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L241)

```
PointInPolygon :: proc "c" (point: [2]f32, #by_ptr shape: Polygon) -> bool ---
```

 

Test a point for overlap with a convex polygon in local space

### [PrismaticJoint\_EnableLimit ¶](#PrismaticJoint_EnableLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1535)

```
PrismaticJoint_EnableLimit :: proc "c" (jointId: JointId, enableLimit: bool) ---
```

 

Enable/disable a prismatic joint limit

### [PrismaticJoint\_EnableMotor ¶](#PrismaticJoint_EnableMotor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1550)

```
PrismaticJoint_EnableMotor :: proc "c" (jointId: JointId, enableMotor: bool) ---
```

 

Enable/disable a prismatic joint motor

### [PrismaticJoint\_EnableSpring ¶](#PrismaticJoint_EnableSpring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1515)

```
PrismaticJoint_EnableSpring :: proc "c" (jointId: JointId, enableSpring: bool) ---
```

 

Enable/disable the joint spring.

### [PrismaticJoint\_GetLowerLimit ¶](#PrismaticJoint_GetLowerLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1541)

```
PrismaticJoint_GetLowerLimit :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic joint lower limit

### [PrismaticJoint\_GetMaxMotorForce ¶](#PrismaticJoint_GetMaxMotorForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1565)

```
PrismaticJoint_GetMaxMotorForce :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic joint maximum motor force, usually in newtons

### [PrismaticJoint\_GetMotorForce ¶](#PrismaticJoint_GetMotorForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1568)

```
PrismaticJoint_GetMotorForce :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic joint current motor force, usually in newtons

### [PrismaticJoint\_GetMotorSpeed ¶](#PrismaticJoint_GetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1559)

```
PrismaticJoint_GetMotorSpeed :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic joint motor speed, usually in meters per second

### [PrismaticJoint\_GetSpeed ¶](#PrismaticJoint_GetSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1574)

```
PrismaticJoint_GetSpeed :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the current joint translation speed, usually in meters per second.

### [PrismaticJoint\_GetSpringDampingRatio ¶](#PrismaticJoint_GetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1532)

```
PrismaticJoint_GetSpringDampingRatio :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic spring damping ratio (non-dimensional)

### [PrismaticJoint\_GetSpringHertz ¶](#PrismaticJoint_GetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1526)

```
PrismaticJoint_GetSpringHertz :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic joint stiffness in Hertz

### [PrismaticJoint\_GetTargetTranslation ¶](#PrismaticJoint_GetTargetTranslation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1477)

```
PrismaticJoint_GetTargetTranslation :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic joint sprint target translation, usually in meters

### [PrismaticJoint\_GetTranslation ¶](#PrismaticJoint_GetTranslation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1571)

```
PrismaticJoint_GetTranslation :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the current joint translation, usually in meters.

### [PrismaticJoint\_GetUpperLimit ¶](#PrismaticJoint_GetUpperLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1544)

```
PrismaticJoint_GetUpperLimit :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the prismatic joint upper limit

### [PrismaticJoint\_IsLimitEnabled ¶](#PrismaticJoint_IsLimitEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1538)

```
PrismaticJoint_IsLimitEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the prismatic joint limit enabled?

### [PrismaticJoint\_IsMotorEnabled ¶](#PrismaticJoint_IsMotorEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1553)

```
PrismaticJoint_IsMotorEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the prismatic joint motor enabled?

### [PrismaticJoint\_IsSpringEnabled ¶](#PrismaticJoint_IsSpringEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1518)

```
PrismaticJoint_IsSpringEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the prismatic joint spring enabled or not?

### [PrismaticJoint\_SetLimits ¶](#PrismaticJoint_SetLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1547)

```
PrismaticJoint_SetLimits :: proc "c" (jointId: JointId, lower, upper: f32) ---
```

 

Set the prismatic joint limits

### [PrismaticJoint\_SetMaxMotorForce ¶](#PrismaticJoint_SetMaxMotorForce) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1562)

```
PrismaticJoint_SetMaxMotorForce :: proc "c" (jointId: JointId, force: f32) ---
```

 

Set the prismatic joint maximum motor force, usually in newtons

### [PrismaticJoint\_SetMotorSpeed ¶](#PrismaticJoint_SetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1556)

```
PrismaticJoint_SetMotorSpeed :: proc "c" (jointId: JointId, motorSpeed: f32) ---
```

 

Set the prismatic joint motor speed, usually in meters per second

### [PrismaticJoint\_SetSpringDampingRatio ¶](#PrismaticJoint_SetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1529)

```
PrismaticJoint_SetSpringDampingRatio :: proc "c" (jointId: JointId, dampingRatio: f32) ---
```

 

Set the prismatic joint damping ratio (non-dimensional)

### [PrismaticJoint\_SetSpringHertz ¶](#PrismaticJoint_SetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1523)

```
PrismaticJoint_SetSpringHertz :: proc "c" (jointId: JointId, hertz: f32) ---
```

 

Set the prismatic joint stiffness in Hertz.
This should usually be less than a quarter of the simulation rate. For example, if the simulation
runs at 60Hz then the joint stiffness should be 15Hz or less.

### [PrismaticJoint\_SetTargetTranslation ¶](#PrismaticJoint_SetTargetTranslation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1474)

```
PrismaticJoint_SetTargetTranslation :: proc "c" (jointId: JointId, translation: f32) ---
```

 

Set the prismatic joint sprint target angle, usually in meters

### [RayCastCapsule ¶](#RayCastCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L247)

```
RayCastCapsule :: proc "c" (#by_ptr input: RayCastInput, #by_ptr shape: Capsule) -> CastOutput ---
```

 

Ray cast versus capsule in shape local space. Initial overlap is treated as a miss.

### [RayCastCircle ¶](#RayCastCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L244)

```
RayCastCircle :: proc "c" (#by_ptr input: RayCastInput, #by_ptr shape: Circle) -> CastOutput ---
```

 

Ray cast versus circle in shape local space. Initial overlap is treated as a miss.

### [RayCastPolygon ¶](#RayCastPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L254)

```
RayCastPolygon :: proc "c" (#by_ptr input: RayCastInput, #by_ptr shape: Polygon) -> CastOutput ---
```

 

Ray cast versus polygon in shape local space. Initial overlap is treated as a miss.

### [RayCastSegment ¶](#RayCastSegment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L251)

```
RayCastSegment :: proc "c" (#by_ptr input: RayCastInput, #by_ptr shape: Segment, oneSided: bool) -> CastOutput ---
```

 

Ray cast versus segment in shape local space. Optionally treat the segment as one-sided with hits from
the left side being treated as a miss.

### [RelativeAngle ¶](#RelativeAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L410)

```
RelativeAngle :: proc "c" (b, a: Rot) -> f32 {…}
```

 

relative angle between b and a (rot\_b \* inv(rot\_a))

### [RevoluteJoint\_EnableLimit ¶](#RevoluteJoint_EnableLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1617)

```
RevoluteJoint_EnableLimit :: proc "c" (jointId: JointId, enableLimit: bool) ---
```

 

Enable/disable the revolute joint limit

### [RevoluteJoint\_EnableMotor ¶](#RevoluteJoint_EnableMotor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1633)

```
RevoluteJoint_EnableMotor :: proc "c" (jointId: JointId, enableMotor: bool) ---
```

 

Enable/disable a revolute joint motor

### [RevoluteJoint\_EnableSpring ¶](#RevoluteJoint_EnableSpring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1589)

```
RevoluteJoint_EnableSpring :: proc "c" (jointId: JointId, enableSpring: bool) ---
```

 

Enable/disable the revolute joint spring

### [RevoluteJoint\_GetAngle ¶](#RevoluteJoint_GetAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1614)

```
RevoluteJoint_GetAngle :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint current angle in radians relative to the reference angle

```
@see b2RevoluteJointDef::referenceAngle
```

### [RevoluteJoint\_GetLowerLimit ¶](#RevoluteJoint_GetLowerLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1623)

```
RevoluteJoint_GetLowerLimit :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint lower limit in radians

### [RevoluteJoint\_GetMaxMotorTorque ¶](#RevoluteJoint_GetMaxMotorTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1651)

```
RevoluteJoint_GetMaxMotorTorque :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint maximum motor torque, usually in newton-meters

### [RevoluteJoint\_GetMotorSpeed ¶](#RevoluteJoint_GetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1642)

```
RevoluteJoint_GetMotorSpeed :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint motor speed in radians per second

### [RevoluteJoint\_GetMotorTorque ¶](#RevoluteJoint_GetMotorTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1645)

```
RevoluteJoint_GetMotorTorque :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint current motor torque, usually in newton-meters

### [RevoluteJoint\_GetSpringDampingRatio ¶](#RevoluteJoint_GetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1604)

```
RevoluteJoint_GetSpringDampingRatio :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint spring damping ratio, non-dimensional

### [RevoluteJoint\_GetSpringHertz ¶](#RevoluteJoint_GetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1598)

```
RevoluteJoint_GetSpringHertz :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint spring stiffness in Hertz

### [RevoluteJoint\_GetTargetAngle ¶](#RevoluteJoint_GetTargetAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1610)

```
RevoluteJoint_GetTargetAngle :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint spring target angle, radians

### [RevoluteJoint\_GetUpperLimit ¶](#RevoluteJoint_GetUpperLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1626)

```
RevoluteJoint_GetUpperLimit :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the revolute joint upper limit in radians

### [RevoluteJoint\_IsLimitEnabled ¶](#RevoluteJoint_IsLimitEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1620)

```
RevoluteJoint_IsLimitEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the revolute joint limit enabled?

### [RevoluteJoint\_IsMotorEnabled ¶](#RevoluteJoint_IsMotorEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1636)

```
RevoluteJoint_IsMotorEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the revolute joint motor enabled?

### [RevoluteJoint\_IsSpringEnabled ¶](#RevoluteJoint_IsSpringEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1592)

```
RevoluteJoint_IsSpringEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the revolute spring enabled?

### [RevoluteJoint\_SetLimits ¶](#RevoluteJoint_SetLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1630)

```
RevoluteJoint_SetLimits :: proc "c" (jointId: JointId, lower, upper: f32) ---
```

 

Set the revolute joint limits in radians. It is expected that lower <= upper
and that -0.99  *B2\_PI <= lower && upper <= -0.99*  B2\_PI.

### [RevoluteJoint\_SetMaxMotorTorque ¶](#RevoluteJoint_SetMaxMotorTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1648)

```
RevoluteJoint_SetMaxMotorTorque :: proc "c" (jointId: JointId, torque: f32) ---
```

 

Set the revolute joint maximum motor torque, usually in newton-meters

### [RevoluteJoint\_SetMotorSpeed ¶](#RevoluteJoint_SetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1639)

```
RevoluteJoint_SetMotorSpeed :: proc "c" (jointId: JointId, motorSpeed: f32) ---
```

 

Set the revolute joint motor speed in radians per second

### [RevoluteJoint\_SetSpringDampingRatio ¶](#RevoluteJoint_SetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1601)

```
RevoluteJoint_SetSpringDampingRatio :: proc "c" (jointId: JointId, dampingRatio: f32) ---
```

 

Set the revolute joint spring damping ratio, non-dimensional

### [RevoluteJoint\_SetSpringHertz ¶](#RevoluteJoint_SetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1595)

```
RevoluteJoint_SetSpringHertz :: proc "c" (jointId: JointId, hertz: f32) ---
```

 

Set the revolute joint spring stiffness in Hertz

### [RevoluteJoint\_SetTargetAngle ¶](#RevoluteJoint_SetTargetAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1607)

```
RevoluteJoint_SetTargetAngle :: proc "c" (jointId: JointId, angle: f32) ---
```

 

Set the revolute joint spring target angle, radians

### [RightPerp ¶](#RightPerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L138)

```
RightPerp :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

 

Get a right pointing perpendicular vector. Equivalent to b2CrossVS(v, 1)

### [Rot\_GetAngle ¶](#Rot_GetAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L368)

```
Rot_GetAngle :: proc "c" (q: Rot) -> f32 {…}
```

 

Get the angle in radians in the range [-pi, pi]

### [Rot\_GetXAxis ¶](#Rot_GetXAxis) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L374)

```
Rot_GetXAxis :: proc "c" (q: Rot) -> [2]f32 {…}
```

 

Get the x-axis

### [Rot\_GetYAxis ¶](#Rot_GetYAxis) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L380)

```
Rot_GetYAxis :: proc "c" (q: Rot) -> [2]f32 {…}
```

 

Get the y-axis

### [RotateVector ¶](#RotateVector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L426)

```
RotateVector :: proc "c" (q: Rot, v: [2]f32) -> [2]f32 {…}
```

 

Rotate a vector

### [SegmentDistance ¶](#SegmentDistance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L299)

```
SegmentDistance :: proc "c" (p1, q1: [2]f32, p2, q2: [2]f32) -> SegmentDistanceResult ---
```

 

Compute the distance between two line segments, clamping at the end points if needed.

### [SetAllocator ¶](#SetAllocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L65)

```
SetAllocator :: proc "c" (allocFcn: AllocFcn, freefcn: FreeFcn) ---
```

 

This allows the user to override the allocation functions. These should be

```
set during application startup.
```

### [SetAssertFcn ¶](#SetAssertFcn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L70)

```
SetAssertFcn :: proc "c" (assertfcn: AssertFcn) ---
```

 

Override the default assert callback

```
@param assertFcn a non-null assert callback
```

### [SetLengthUnitsPerMeter ¶](#SetLengthUnitsPerMeter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L99)

```
SetLengthUnitsPerMeter :: proc "c" (lengthUnits: f32) ---
```

 

Box2D bases all length units on meters, but you may need different units for your game.
You can set this value to use different units. This should be done at application startup
and only modified once. Default value is 1.
For example, if your game uses pixels for units you can use pixels for all length values
sent to Box2D. There should be no extra cost. However, Box2D has some internal tolerances
and thresholds that have been tuned for meters. By calling this function, Box2D is able
to adjust those tolerances and thresholds to improve accuracy.
A good rule of thumb is to pass the height of your player character to this function. So
if your player character is 32 pixels high, then pass 32 to this function. Then you may
confidently use pixels for all the length values sent to Box2D. All length values returned
from Box2D will also be pixels because Box2D does not do any scaling internally.
However, you are now on the hook for coming up with good values for gravity, density, and
forces.
@warning This must be modified before any calls to Box2D

### [ShapeCast ¶](#ShapeCast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L337)

```
ShapeCast :: proc "c" (#by_ptr input: ShapeCastPairInput) -> CastOutput ---
```

 

Perform a linear shape cast of shape B moving and shape A fixed. Determines the hit point, normal, and translation fraction.
Initially touching shapes are treated as a miss.

### [ShapeCastCapsule ¶](#ShapeCastCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L260)

```
ShapeCastCapsule :: proc "c" (#by_ptr input: ShapeCastInput, #by_ptr shape: Capsule) -> CastOutput ---
```

 

Shape cast versus a capsule. Initial overlap is treated as a miss.

### [ShapeCastCircle ¶](#ShapeCastCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L257)

```
ShapeCastCircle :: proc "c" (#by_ptr input: ShapeCastInput, #by_ptr shape: Circle) -> CastOutput ---
```

 

Shape cast versus a circle. Initial overlap is treated as a miss.

### [ShapeCastPolygon ¶](#ShapeCastPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L266)

```
ShapeCastPolygon :: proc "c" (#by_ptr input: ShapeCastInput, #by_ptr shape: Polygon) -> CastOutput ---
```

 

Shape cast versus a convex polygon. Initial overlap is treated as a miss.

### [ShapeCastSegment ¶](#ShapeCastSegment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L263)

```
ShapeCastSegment :: proc "c" (#by_ptr input: ShapeCastInput, #by_ptr shape: Segment) -> CastOutput ---
```

 

Shape cast versus a line segment. Initial overlap is treated as a miss.

### [ShapeDistance ¶](#ShapeDistance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L306)

```
ShapeDistance :: proc "c" (#by_ptr input: DistanceInput, cache: ^SimplexCache, simplexes: []Simplex) -> DistanceOutput {…}
```

 

Compute the closest points between two shapes represented as point clouds.
SimplexCache cache is input/output. On the first call set SimplexCache.count to zero.

```
The underlying GJK algorithm may be debugged by passing in debug simplexes and capacity. You may pass in NULL and 0 for these.
```

### [Shape\_AreContactEventsEnabled ¶](#Shape_AreContactEventsEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1094)

```
Shape_AreContactEventsEnabled :: proc "c" (shapeId: ShapeId) -> bool ---
```

 

Returns true if contact events are enabled

### [Shape\_AreHitEventsEnabled ¶](#Shape_AreHitEventsEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1109)

```
Shape_AreHitEventsEnabled :: proc "c" (shapeId: ShapeId) -> bool ---
```

 

Returns true if hit events are enabled

### [Shape\_ArePreSolveEventsEnabled ¶](#Shape_ArePreSolveEventsEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1102)

```
Shape_ArePreSolveEventsEnabled :: proc "c" (shapeId: ShapeId) -> bool ---
```

 

Returns true if pre-solve events are enabled

### [Shape\_AreSensorEventsEnabled ¶](#Shape_AreSensorEventsEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1086)

```
Shape_AreSensorEventsEnabled :: proc "c" (shapeId: ShapeId) -> bool ---
```

 

Returns true if sensor events are enabled

### [Shape\_EnableContactEvents ¶](#Shape_EnableContactEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1091)

```
Shape_EnableContactEvents :: proc "c" (shapeId: ShapeId, flag: bool) ---
```

 

Enable contact events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors.

```
@see b2ShapeDef::enableContactEvents
```

@warning changing this at run-time may lead to lost begin/end events

### [Shape\_EnableHitEvents ¶](#Shape_EnableHitEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1106)

```
Shape_EnableHitEvents :: proc "c" (shapeId: ShapeId, flag: bool) ---
```

 

Enable contact hit events for this shape. Ignored for sensors.

```
@see WorldDef.hitEventThreshold
```

### [Shape\_EnablePreSolveEvents ¶](#Shape_EnablePreSolveEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1099)

```
Shape_EnablePreSolveEvents :: proc "c" (shapeId: ShapeId, flag: bool) ---
```

 

Enable pre-solve contact events for this shape. Only applies to dynamic bodies. These are expensive

```
and must be carefully handled due to multithreading. Ignored for sensors.
@see b2PreSolveFcn
```

### [Shape\_EnableSensorEvents ¶](#Shape_EnableSensorEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1083)

```
Shape_EnableSensorEvents :: proc "c" (shapeId: ShapeId, flag: bool) ---
```

 

Enable sensor events for this shape.

```
@see b2ShapeDef::enableSensorEvents
```

### [Shape\_GetAABB ¶](#Shape_GetAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1174)

```
Shape_GetAABB :: proc "c" (shapeId: ShapeId) -> AABB ---
```

 

Get the current world AABB

### [Shape\_GetBody ¶](#Shape_GetBody) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1020)

```
Shape_GetBody :: proc "c" (shapeId: ShapeId) -> BodyId ---
```

 

Get the id of the body that a shape is attached to

### [Shape\_GetCapsule ¶](#Shape_GetCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1128)

```
Shape_GetCapsule :: proc "c" (shapeId: ShapeId) -> Capsule ---
```

 

Get a copy of the shape's capsule. Asserts the type is correct.

### [Shape\_GetChainSegment ¶](#Shape_GetChainSegment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1125)

```
Shape_GetChainSegment :: proc "c" (shapeId: ShapeId) -> ChainSegment ---
```

 

Get a copy of the shape's chain segment. These come from chain shapes.
Asserts the type is correct.

### [Shape\_GetCircle ¶](#Shape_GetCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1118)

```
Shape_GetCircle :: proc "c" (shapeId: ShapeId) -> Circle ---
```

 

Get a copy of the shape's circle. Asserts the type is correct.

### [Shape\_GetClosestPoint ¶](#Shape_GetClosestPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1180)

```
Shape_GetClosestPoint :: proc "c" (shapeId: ShapeId, target: [2]f32) -> [2]f32 ---
```

 

Get the closest point on a shape to a target point. Target and result are in world space.

### [Shape\_GetContactCapacity ¶](#Shape_GetContactCapacity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1156)

```
Shape_GetContactCapacity :: proc "c" (shapeId: ShapeId) -> i32 ---
```

 

Get the maximum capacity required for retrieving all the touching contacts on a shape

### [Shape\_GetContactData ¶](#Shape_GetContactData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1185)

```
Shape_GetContactData :: proc "c" (shapeId: ShapeId, contactData: []ContactData) -> []ContactData {…}
```

 

Get the touching contact data for a shape. The provided shapeId will be either shapeIdA or shapeIdB on the contact data.

### [Shape\_GetDensity ¶](#Shape_GetDensity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1043)

```
Shape_GetDensity :: proc "c" (shapeId: ShapeId) -> f32 ---
```

 

Get the density of a shape, usually in kg/m^2

### [Shape\_GetFilter ¶](#Shape_GetFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1073)

```
Shape_GetFilter :: proc "c" (shapeId: ShapeId) -> Filter ---
```

 

Get the shape filter

### [Shape\_GetFriction ¶](#Shape_GetFriction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1050)

```
Shape_GetFriction :: proc "c" (shapeId: ShapeId) -> f32 ---
```

 

Get the friction of a shape

### [Shape\_GetMassData ¶](#Shape_GetMassData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1177)

```
Shape_GetMassData :: proc "c" (shapeId: ShapeId) -> MassData ---
```

 

Get the mass data of a shape

### [Shape\_GetMaterial ¶](#Shape_GetMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1064)

```
Shape_GetMaterial :: proc "c" (shapeId: ShapeId) -> i32 ---
```

 

Get the shape material identifier

### [Shape\_GetParentChain ¶](#Shape_GetParentChain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1153)

```
Shape_GetParentChain :: proc "c" (shapeId: ShapeId) -> ChainId ---
```

 

Get the parent chain id if the shape type is a chain segment, otherwise
returns b2\_nullChainId.

### [Shape\_GetPolygon ¶](#Shape_GetPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1131)

```
Shape_GetPolygon :: proc "c" (shapeId: ShapeId) -> Polygon ---
```

 

Get a copy of the shape's convex polygon. Asserts the type is correct.

### [Shape\_GetRestitution ¶](#Shape_GetRestitution) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1057)

```
Shape_GetRestitution :: proc "c" (shapeId: ShapeId) -> f32 ---
```

 

Get the shape restitution

### [Shape\_GetSegment ¶](#Shape_GetSegment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1121)

```
Shape_GetSegment :: proc "c" (shapeId: ShapeId) -> Segment ---
```

 

Get a copy of the shape's line segment. Asserts the type is correct.

### [Shape\_GetSensorCapacity ¶](#Shape_GetSensorCapacity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1162)

```
Shape_GetSensorCapacity :: proc "c" (shapeId: ShapeId) -> i32 ---
```

 

Get the maximum capacity required for retrieving all the overlapped shapes on a sensor shape.
This returns 0 if the provided shape is not a sensor.
@param shapeId the id of a sensor shape
@returns the required capacity to get all the overlaps in b2Shape\_GetSensorOverlaps

### [Shape\_GetSensorOverlaps ¶](#Shape_GetSensorOverlaps) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1171)

```
Shape_GetSensorOverlaps :: proc "c" (shapeId: ShapeId, overlaps: [^]ShapeId, capacity: i32) -> i32 ---
```

 

Get the overlapped shapes for a sensor shape.
@param shapeId the id of a sensor shape
@param overlaps a user allocated array that is filled with the overlapping shapes
@param capacity the capacity of overlappedShapes
@returns the number of elements filled in the provided array
@warning do not ignore the return value, it specifies the valid number of elements
@warning overlaps may contain destroyed shapes so use b2Shape\_IsValid to confirm each overlap

### [Shape\_GetSurfaceMaterial ¶](#Shape_GetSurfaceMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1070)

```
Shape_GetSurfaceMaterial :: proc "c" (shapeId: ShapeId) -> SurfaceMaterial ---
```

 

Get the shape surface material

### [Shape\_GetType ¶](#Shape_GetType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1017)

```
Shape_GetType :: proc "c" (shapeId: ShapeId) -> ShapeType ---
```

 

Get the type of a shape

### [Shape\_GetUserData ¶](#Shape_GetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1035)

```
Shape_GetUserData :: proc "c" (shapeId: ShapeId) -> rawptr ---
```

 

Get the user data for a shape. This is useful when you get a shape id

```
from an event or query.
```

### [Shape\_GetWorld ¶](#Shape_GetWorld) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1023)

```
Shape_GetWorld :: proc "c" (shapeId: ShapeId) -> WorldId ---
```

 

Get the world that owns this shape.

### [Shape\_IsSensor ¶](#Shape_IsSensor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1028)

```
Shape_IsSensor :: proc "c" (shapeId: ShapeId) -> bool ---
```

 

Returns true if the shape is a sensor. It is not possible to change a shape
from sensor to solid dynamically because this breaks the contract for
sensor events.

### [Shape\_IsValid ¶](#Shape_IsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1014)

```
Shape_IsValid :: proc "c" (id: ShapeId) -> bool ---
```

 

Shape identifier validation. Provides validation for up to 64K allocations.




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [Shape\_RayCast ¶](#Shape_RayCast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1115)

```
Shape_RayCast :: proc "c" (shapeId: ShapeId, #by_ptr input: RayCastInput) -> CastOutput ---
```

 

Ray cast a shape directly

### [Shape\_SetCapsule ¶](#Shape_SetCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1141)

```
Shape_SetCapsule :: proc "c" (shapeId: ShapeId, #by_ptr capsule: Capsule) ---
```

 

Allows you to change a shape to be a capsule or update the current capsule.
This does not modify the mass properties.

```
@see b2Body_ApplyMassFromShapes
```

### [Shape\_SetCircle ¶](#Shape_SetCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1136)

```
Shape_SetCircle :: proc "c" (shapeId: ShapeId, #by_ptr circle: Circle) ---
```

 

Allows you to change a shape to be a circle or update the current circle.
This does not modify the mass properties.

```
@see b2Body_ApplyMassFromShapes
```

### [Shape\_SetDensity ¶](#Shape_SetDensity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1040)

```
Shape_SetDensity :: proc "c" (shapeId: ShapeId, density: f32, updateBodyMass: bool) ---
```

 

Set the mass density of a shape, usually in kg/m^2.

```
This will optionally update the mass properties on the parent body.
@see b2ShapeDef::density, b2Body_ApplyMassFromShapes
```

### [Shape\_SetFilter ¶](#Shape_SetFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1079)

```
Shape_SetFilter :: proc "c" (shapeId: ShapeId, filter: Filter) ---
```

 

Set the current filter. This is almost as expensive as recreating the shape. This may cause
contacts to be immediately destroyed. However contacts are not created until the next world step.
Sensor overlap state is also not updated until the next world step.
@see b2ShapeDef::filter

### [Shape\_SetFriction ¶](#Shape_SetFriction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1047)

```
Shape_SetFriction :: proc "c" (shapeId: ShapeId, friction: f32) ---
```

 

Set the friction on a shape

```
@see b2ShapeDef::friction
```

### [Shape\_SetMaterial ¶](#Shape_SetMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1061)

```
Shape_SetMaterial :: proc "c" (shapeId: ShapeId, material: i32) ---
```

 

Set the shape material identifier
@see b2ShapeDef::material

### [Shape\_SetPolygon ¶](#Shape_SetPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1149)

```
Shape_SetPolygon :: proc "c" (shapeId: ShapeId, #by_ptr polygon: Polygon) ---
```

 

Allows you to change a shape to be a polygon or update the current polygon.
This does not modify the mass properties.

```
@see b2Body_ApplyMassFromShapes
```

### [Shape\_SetRestitution ¶](#Shape_SetRestitution) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1054)

```
Shape_SetRestitution :: proc "c" (shapeId: ShapeId, restitution: f32) ---
```

 

Set the shape restitution (bounciness)

```
@see b2ShapeDef::restitution
```

### [Shape\_SetSegment ¶](#Shape_SetSegment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1144)

```
Shape_SetSegment :: proc "c" (shapeId: ShapeId, #by_ptr segment: Segment) ---
```

 

Allows you to change a shape to be a segment or update the current segment.

### [Shape\_SetSurfaceMaterial ¶](#Shape_SetSurfaceMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1067)

```
Shape_SetSurfaceMaterial :: proc "c" (shapeId: ShapeId, surfaceMaterial: SurfaceMaterial) ---
```

 

Set the shape surface material

### [Shape\_SetUserData ¶](#Shape_SetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1031)

```
Shape_SetUserData :: proc "c" (shapeId: ShapeId, userData: rawptr) ---
```

 

Set the user data for a shape

### [Shape\_TestPoint ¶](#Shape_TestPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1112)

```
Shape_TestPoint :: proc "c" (shapeId: ShapeId, point: [2]f32) -> bool ---
```

 

Test a point for overlap with a shape

### [Solve22 ¶](#Solve22) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L501)

```
Solve22 :: proc "c" (A: matrix[2, 2]f32, b: [2]f32) -> [2]f32 {…}
```

 

Solve A \* x = b, where b is a column vector. This is more efficient
than computing the inverse in one-shot cases.

### [SolvePlanes ¶](#SolvePlanes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L486)

```
SolvePlanes :: proc(targetDelta: [2]f32, planes: []CollisionPlane) -> PlaneSolverResult {…}
```

### [StoreWorldId ¶](#StoreWorldId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin#L91)

```
StoreWorldId :: proc "c" (id: WorldId) -> u32 {…}
```

 

Store a world id into a u32.

### [Sub ¶](#Sub) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L150)

```
Sub :: proc "c" (a, b: [2]f32) -> [2]f32 {…}
```

 

Vector subtraction

### [TimeOfImpact ¶](#TimeOfImpact) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L346)

```
TimeOfImpact :: proc "c" (#by_ptr input: TOIInput) -> TOIOutput ---
```

 

Compute the upper bound on time before two shapes penetrate. Time is represented as
a fraction between [0,tMax]. This uses a swept separating axis and may miss some intermediate,
non-tunneling collisions. If you change the time interval, you should call this function
again.

### [TransformPoint ¶](#TransformPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L438)

```
TransformPoint :: proc "c" (t: Transform, p: [2]f32) -> [2]f32 {…}
```

 

Transform a point (e.g. local space to world space)

### [TransformPolygon ¶](#TransformPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L211)

```
TransformPolygon :: proc "c" (transform: Transform, #by_ptr polygon: Polygon) -> Polygon ---
```

 

Transform a polygon. This is useful for transferring a shape from one body to another.

### [UnwindAngle ¶](#UnwindAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L420)

```
UnwindAngle :: proc "c" (radians: f32) -> f32 {…}
```

 

Convert any angle into the range [-pi, pi]

### [ValidateHull ¶](#ValidateHull) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L293)

```
ValidateHull :: proc "c" (#by_ptr hull: Hull) -> bool ---
```

 

This determines if a hull is valid. Checks for:
convexity
collinear points
This is expensive and should not be called at runtime.

### [WeldJoint\_GetAngularDampingRatio ¶](#WeldJoint_GetAngularDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1691)

```
WeldJoint_GetAngularDampingRatio :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the weld joint angular damping ratio, non-dimensional

### [WeldJoint\_GetAngularHertz ¶](#WeldJoint_GetAngularHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1685)

```
WeldJoint_GetAngularHertz :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the weld joint angular stiffness in Hertz

### [WeldJoint\_GetLinearDampingRatio ¶](#WeldJoint_GetLinearDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1679)

```
WeldJoint_GetLinearDampingRatio :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the weld joint linear damping ratio (non-dimensional)

### [WeldJoint\_GetLinearHertz ¶](#WeldJoint_GetLinearHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1673)

```
WeldJoint_GetLinearHertz :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the weld joint linear stiffness in Hertz

### [WeldJoint\_SetAngularDampingRatio ¶](#WeldJoint_SetAngularDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1688)

```
WeldJoint_SetAngularDampingRatio :: proc "c" (jointId: JointId, dampingRatio: f32) ---
```

 

Set weld joint angular damping ratio, non-dimensional

### [WeldJoint\_SetAngularHertz ¶](#WeldJoint_SetAngularHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1682)

```
WeldJoint_SetAngularHertz :: proc "c" (jointId: JointId, hertz: f32) ---
```

 

Set the weld joint angular stiffness in Hertz. 0 is rigid.

### [WeldJoint\_SetLinearDampingRatio ¶](#WeldJoint_SetLinearDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1676)

```
WeldJoint_SetLinearDampingRatio :: proc "c" (jointId: JointId, dampingRatio: f32) ---
```

 

Set the weld joint linear damping ratio (non-dimensional)

### [WeldJoint\_SetLinearHertz ¶](#WeldJoint_SetLinearHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1670)

```
WeldJoint_SetLinearHertz :: proc "c" (jointId: JointId, hertz: f32) ---
```

 

Set the weld joint linear stiffness in Hertz. 0 is rigid.

### [WheelJoint\_EnableLimit ¶](#WheelJoint_EnableLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1725)

```
WheelJoint_EnableLimit :: proc "c" (jointId: JointId, enableLimit: bool) ---
```

 

Enable/disable the wheel joint limit

### [WheelJoint\_EnableMotor ¶](#WheelJoint_EnableMotor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1740)

```
WheelJoint_EnableMotor :: proc "c" (jointId: JointId, enableMotor: bool) ---
```

 

Enable/disable the wheel joint motor

### [WheelJoint\_EnableSpring ¶](#WheelJoint_EnableSpring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1707)

```
WheelJoint_EnableSpring :: proc "c" (jointId: JointId, enableSpring: bool) ---
```

 

Enable/disable the wheel joint spring

### [WheelJoint\_GetLowerLimit ¶](#WheelJoint_GetLowerLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1731)

```
WheelJoint_GetLowerLimit :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the wheel joint lower limit

### [WheelJoint\_GetMaxMotorTorque ¶](#WheelJoint_GetMaxMotorTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1755)

```
WheelJoint_GetMaxMotorTorque :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the wheel joint maximum motor torque, usually in newton-meters

### [WheelJoint\_GetMotorSpeed ¶](#WheelJoint_GetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1749)

```
WheelJoint_GetMotorSpeed :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the wheel joint motor speed in radians per second

### [WheelJoint\_GetMotorTorque ¶](#WheelJoint_GetMotorTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1758)

```
WheelJoint_GetMotorTorque :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the wheel joint current motor torque, usually in newton-meters

### [WheelJoint\_GetSpringDampingRatio ¶](#WheelJoint_GetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1722)

```
WheelJoint_GetSpringDampingRatio :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the wheel joint damping ratio, non-dimensional

### [WheelJoint\_GetSpringHertz ¶](#WheelJoint_GetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1716)

```
WheelJoint_GetSpringHertz :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the wheel joint stiffness in Hertz

### [WheelJoint\_GetUpperLimit ¶](#WheelJoint_GetUpperLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1734)

```
WheelJoint_GetUpperLimit :: proc "c" (jointId: JointId) -> f32 ---
```

 

Get the wheel joint upper limit

### [WheelJoint\_IsLimitEnabled ¶](#WheelJoint_IsLimitEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1728)

```
WheelJoint_IsLimitEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the wheel joint limit enabled?

### [WheelJoint\_IsMotorEnabled ¶](#WheelJoint_IsMotorEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1743)

```
WheelJoint_IsMotorEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the wheel joint motor enabled?

### [WheelJoint\_IsSpringEnabled ¶](#WheelJoint_IsSpringEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1710)

```
WheelJoint_IsSpringEnabled :: proc "c" (jointId: JointId) -> bool ---
```

 

Is the wheel joint spring enabled?

### [WheelJoint\_SetLimits ¶](#WheelJoint_SetLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1737)

```
WheelJoint_SetLimits :: proc "c" (jointId: JointId, lower, upper: f32) ---
```

 

Set the wheel joint limits

### [WheelJoint\_SetMaxMotorTorque ¶](#WheelJoint_SetMaxMotorTorque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1752)

```
WheelJoint_SetMaxMotorTorque :: proc "c" (jointId: JointId, torque: f32) ---
```

 

Set the wheel joint maximum motor torque, usually in newton-meters

### [WheelJoint\_SetMotorSpeed ¶](#WheelJoint_SetMotorSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1746)

```
WheelJoint_SetMotorSpeed :: proc "c" (jointId: JointId, motorSpeed: f32) ---
```

 

Set the wheel joint motor speed in radians per second

### [WheelJoint\_SetSpringDampingRatio ¶](#WheelJoint_SetSpringDampingRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1719)

```
WheelJoint_SetSpringDampingRatio :: proc "c" (jointId: JointId, dampingRatio: f32) ---
```

 

Set the wheel joint damping ratio, non-dimensional

### [WheelJoint\_SetSpringHertz ¶](#WheelJoint_SetSpringHertz) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1713)

```
WheelJoint_SetSpringHertz :: proc "c" (jointId: JointId, hertz: f32) ---
```

 

Set the wheel joint stiffness in Hertz

### [World\_CastMover ¶](#World_CastMover) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L575)

```
World_CastMover :: proc "c" (worldId: WorldId, #by_ptr mover: Capsule, translation: [2]f32, filter: QueryFilter) -> f32 ---
```

 

Cast a capsule mover through the world. This is a special shape cast that handles sliding along other shapes while reducing
clipping.

### [World\_CastRay ¶](#World_CastRay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L563)

```
World_CastRay :: proc "c" (
	worldId:     WorldId, 
	origin:      [2]f32, 
	translation: [2]f32, 
	filter:      QueryFilter, 
	fcn:         CastResultFcn, 
	ctx:         rawptr, 
) -> TreeStats ---
```

 

Cast a ray into the world to collect shapes in the path of the ray.
Your callback function controls whether you get the closest point, any point, or n-points.

```
@note The callback function may receive shapes in any order
@param worldId The world to cast the ray against
@param origin The start point of the ray
@param translation The translation of the ray from the start point to the end point
@param filter Contains bit flags to filter unwanted shapes from the results
@param fcn A user implemented callback function
@param context A user context that is passed along to the callback function
@return traversal performance counters
```

### [World\_CastRayClosest ¶](#World_CastRayClosest) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L567)

```
World_CastRayClosest :: proc "c" (worldId: WorldId, origin: [2]f32, translation: [2]f32, filter: QueryFilter) -> RayResult ---
```

 

Cast a ray into the world to collect the closest hit. This is a convenience function. Ignores initial overlap.
This is less general than b2World\_CastRay() and does not allow for custom filtering.

### [World\_CastShape ¶](#World_CastShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L571)

```
World_CastShape :: proc "c" (
	worldId:     WorldId, 
	#by_ptr shape: ShapeProxy, 
	translation: [2]f32, 
	filter:      QueryFilter, 
	fcn:         CastResultFcn, 
	ctx:         rawptr, 
) -> TreeStats ---
```

 

Cast a shape through the world. Similar to a cast ray except that a shape is cast instead of a point.
@see World\_CastRay

### [World\_CollideMover ¶](#World_CollideMover) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L579)

```
World_CollideMover :: proc "c" (worldId: WorldId, #by_ptr mover: Capsule, filter: QueryFilter, fcn: PlaneResultFcn, ctx: rawptr) ---
```

 

Collide a capsule mover with the world, gathering collision planes that can be fed to b2SolvePlanes. Useful for
kinematic character movement.

### [World\_Draw ¶](#World_Draw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L536)

```
World_Draw :: proc "c" (worldId: WorldId, draw: ^DebugDraw) ---
```

 

Call this to draw shapes and other debug draw data

### [World\_DumpMemoryStats ¶](#World_DumpMemoryStats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L676)

```
World_DumpMemoryStats :: proc "c" (worldId: WorldId) ---
```

 

Dump memory stats to box2d\_memory.txt

### [World\_EnableContinuous ¶](#World_EnableContinuous) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L593)

```
World_EnableContinuous :: proc "c" (worldId: WorldId, flag: bool) ---
```

 

Enable/disable continuous collision between dynamic and static bodies. Generally you should keep continuous
collision enabled to prevent fast moving objects from going through static objects. The performance gain from

```
disabling continuous collision is minor.
@see WorldDef
```

### [World\_EnableSleeping ¶](#World_EnableSleeping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L584)

```
World_EnableSleeping :: proc "c" (worldId: WorldId, flag: bool) ---
```

 

Enable/disable sleep. If your application does not need sleeping, you can gain some performance

```
by disabling sleep completely at the world level.
@see WorldDef
```

### [World\_EnableSpeculative ¶](#World_EnableSpeculative) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L682)

```
World_EnableSpeculative :: proc "c" (worldId: WorldId, flag: bool) ---
```

 

This is for internal testing

### [World\_EnableWarmStarting ¶](#World_EnableWarmStarting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L649)

```
World_EnableWarmStarting :: proc "c" (worldId: WorldId, flag: bool) ---
```

 

Enable/disable constraint warm starting. Advanced feature for testing. Disabling

```
warm starting greatly reduces stability and provides no performance gain.
```

### [World\_Explode ¶](#World_Explode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L631)

```
World_Explode :: proc "c" (worldId: WorldId, #by_ptr explosionDef: ExplosionDef) ---
```

 

Apply a radial explosion

```
@param worldId The world id
@param explosionDef The explosion definition
```

### [World\_GetAwakeBodyCount ¶](#World_GetAwakeBodyCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L655)

```
World_GetAwakeBodyCount :: proc "c" (worldId: WorldId) -> i32 ---
```

 

Get the number of awake bodies.

### [World\_GetBodyEvents ¶](#World_GetBodyEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L539)

```
World_GetBodyEvents :: proc "c" (worldId: WorldId) -> BodyEvents ---
```

 

Get the body events for the current time step. The event data is transient. Do not store a reference to this data.

### [World\_GetContactEvents ¶](#World_GetContactEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L545)

```
World_GetContactEvents :: proc "c" (worldId: WorldId) -> ContactEvents ---
```

 

Get contact events for this current time step. The event data is transient. Do not store a reference to this data.

### [World\_GetCounters ¶](#World_GetCounters) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L661)

```
World_GetCounters :: proc "c" (worldId: WorldId) -> Counters ---
```

 

Get world counters and sizes

### [World\_GetGravity ¶](#World_GetGravity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L626)

```
World_GetGravity :: proc "c" (worldId: WorldId) -> [2]f32 ---
```

 

Get the gravity vector

### [World\_GetHitEventThreshold ¶](#World_GetHitEventThreshold) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L612)

```
World_GetHitEventThreshold :: proc "c" (worldId: WorldId) -> f32 ---
```

 

Get the hit event speed threshold. Usually in meters per second.

### [World\_GetMaximumLinearSpeed ¶](#World_GetMaximumLinearSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L645)

```
World_GetMaximumLinearSpeed :: proc "c" (worldId: WorldId) -> f32 ---
```

 

Get the maximum linear speed. Usually in m/s.

### [World\_GetProfile ¶](#World_GetProfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L658)

```
World_GetProfile :: proc "c" (worldId: WorldId) -> Profile ---
```

 

Get the current world performance profile

### [World\_GetRestitutionThreshold ¶](#World_GetRestitutionThreshold) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L604)

```
World_GetRestitutionThreshold :: proc "c" (worldId: WorldId) -> f32 ---
```

 

Get the restitution speed threshold. Usually in meters per second.

### [World\_GetSensorEvents ¶](#World_GetSensorEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L542)

```
World_GetSensorEvents :: proc "c" (worldId: WorldId) -> SensorEvents ---
```

 

Get sensor events for the current time step. The event data is transient. Do not store a reference to this data.

### [World\_GetUserData ¶](#World_GetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L667)

```
World_GetUserData :: proc "c" (worldId: WorldId) -> rawptr ---
```

 

Get the user data pointer.

### [World\_IsContinuousEnabled ¶](#World_IsContinuousEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L596)

```
World_IsContinuousEnabled :: proc "c" (worldId: WorldId) -> bool ---
```

 

Is continuous collision enabled?

### [World\_IsSleepingEnabled ¶](#World_IsSleepingEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L587)

```
World_IsSleepingEnabled :: proc "c" (worldId: WorldId) -> bool ---
```

 

Is body sleeping enabled?

### [World\_IsValid ¶](#World_IsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L527)

```
World_IsValid :: proc "c" (id: WorldId) -> bool ---
```

 

World id validation. Provides validation for up to 64K allocations.




##### Related Procedure Groups

* [IsValid](/vendor/box2d/#IsValid)

### [World\_IsWarmStartingEnabled ¶](#World_IsWarmStartingEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L652)

```
World_IsWarmStartingEnabled :: proc "c" (worldId: WorldId) -> bool ---
```

 

Is constraint warm starting enabled?

### [World\_OverlapAABB ¶](#World_OverlapAABB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L548)

```
World_OverlapAABB :: proc "c" (worldId: WorldId, aabb: AABB, filter: QueryFilter, fcn: OverlapResultFcn, ctx: rawptr) -> TreeStats ---
```

 

Overlap test for all shapes that *potentially* overlap the provided AABB

### [World\_OverlapShape ¶](#World_OverlapShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L551)

```
World_OverlapShape :: proc "c" (worldId: WorldId, #by_ptr proxy: ShapeProxy, filter: QueryFilter, fcn: OverlapResultFcn, ctx: rawptr) -> TreeStats ---
```

 

Overlap test for all shapes that overlap the provided shape proxy.

### [World\_RebuildStaticTree ¶](#World_RebuildStaticTree) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L679)

```
World_RebuildStaticTree :: proc "c" (worldId: WorldId) ---
```

 

This is for internal testing

### [World\_SetContactTuning ¶](#World_SetContactTuning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L639)

```
World_SetContactTuning :: proc "c" (worldId: WorldId, hertz: f32, dampingRatio: f32, pushSpeed: f32) ---
```

 

Adjust contact tuning parameters

```
@param worldId The world id
```

@param hertz The contact stiffness (cycles per second)
@param dampingRatio The contact bounciness with 1 being critical damping (non-dimensional)
@param pushSpeed The maximum contact constraint push out speed (meters per second)

```
@note Advanced feature
```

### [World\_SetCustomFilterCallback ¶](#World_SetCustomFilterCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L615)

```
World_SetCustomFilterCallback :: proc "c" (worldId: WorldId, fcn: CustomFilterFcn, ctx: rawptr) ---
```

 

Register the custom filter callback. This is optional.

### [World\_SetFrictionCallback ¶](#World_SetFrictionCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L670)

```
World_SetFrictionCallback :: proc "c" (worldId: WorldId, callback: FrictionCallback) ---
```

 

Set the friction callback. Passing nil resets to default.

### [World\_SetGravity ¶](#World_SetGravity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L623)

```
World_SetGravity :: proc "c" (worldId: WorldId, gravity: [2]f32) ---
```

 

Set the gravity vector for the entire world. Box2D has no concept of an up direction and this
is left as a decision for the application. Usually in m/s^2.

```
@see WorldDef
```

### [World\_SetHitEventThreshold ¶](#World_SetHitEventThreshold) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L609)

```
World_SetHitEventThreshold :: proc "c" (worldId: WorldId, value: f32) ---
```

 

Adjust the hit event threshold. This controls the collision velocity needed to generate a b2ContactHitEvent.
Usually in meters per second.

```
@see WorldDef::hitEventThreshold
```

### [World\_SetMaximumLinearSpeed ¶](#World_SetMaximumLinearSpeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L642)

```
World_SetMaximumLinearSpeed :: proc "c" (worldId: WorldId, maximumLinearSpeed: f32) ---
```

 

Set the maximum linear speed. Usually in m/s.

### [World\_SetPreSolveCallback ¶](#World_SetPreSolveCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L618)

```
World_SetPreSolveCallback :: proc "c" (worldId: WorldId, fcn: PreSolveFcn, ctx: rawptr) ---
```

 

Register the pre-solve callback. This is optional.

### [World\_SetRestitutionCallback ¶](#World_SetRestitutionCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L673)

```
World_SetRestitutionCallback :: proc "c" (worldId: WorldId, callback: RestitutionCallback) ---
```

 

Set the restitution callback. Passing nil resets to default.

### [World\_SetRestitutionThreshold ¶](#World_SetRestitutionThreshold) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L601)

```
World_SetRestitutionThreshold :: proc "c" (worldId: WorldId, value: f32) ---
```

 

Adjust the restitution threshold. It is recommended not to make this value very small

```
because it will prevent bodies from sleeping. Usually in meters per second.
@see WorldDef
```

### [World\_SetUserData ¶](#World_SetUserData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L664)

```
World_SetUserData :: proc "c" (worldId: WorldId, userData: rawptr) ---
```

 

Set the user data pointer.

### [World\_Step ¶](#World_Step) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L533)

```
World_Step :: proc "c" (worldId: WorldId, timeStep: f32, subStepCount: i32) ---
```

 

Simulate a world for one time step. This performs collision detection, integration, and constraint solution.
@param worldId The world to simulate
@param timeStep The amount of time to simulate, this should be a fixed number. Usually 1/60.
@param subStepCount The number of sub-steps, increasing the sub-step count can increase accuracy. Usually 4.

### [Yield ¶](#Yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L80)

```
Yield :: proc "c" () ---
```

 

Yield to be used in a busy loop.

### [b2SpringDamper ¶](#b2SpringDamper) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin#L625)

```
b2SpringDamper :: proc "c" (hertz, dampingRatio, position, velocity, timeStep: f32) -> f32 {…}
```

 

One-dimensional mass-spring-damper simulation. Returns the new velocity given the position and time step.
You can then compute the new position using:
position += timeStep \* newVelocity
This drives towards a zero position. By using implicit integration we get a stable solution
that doesn't require transcendental functions.

## Procedure Groups

### [IsValid ¶](#IsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin#L1763)

```
IsValid :: proc{
	IsValidFloat,
	IsValidVec2,
	IsValidRotation,
	IsValidAABB,
	IsValidPlane,
	World_IsValid,
	Body_IsValid,
	Shape_IsValid,
	Chain_IsValid,
	Joint_IsValid,
	IsValidRay,
}
```

## Source Files

* [box2d.odin](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/box2d.odin)
* [collision.odin](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/collision.odin)
* [id.odin](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/id.odin)
* [math\_functions.odin](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/math_functions.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/vendor/box2d/types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.115761100 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [AABB](#AABB)
    + [AllocFcn](#AllocFcn)
    + [AssertFcn](#AssertFcn)
    + [BodyDef](#BodyDef)
    + [BodyEvents](#BodyEvents)
    + [BodyId](#BodyId)
    + [BodyMoveEvent](#BodyMoveEvent)
    + [BodyType](#BodyType)
    + [Capsule](#Capsule)
    + [CastOutput](#CastOutput)
    + [CastResultFcn](#CastResultFcn)
    + [ChainDef](#ChainDef)
    + [ChainId](#ChainId)
    + [ChainSegment](#ChainSegment)
    + [Circle](#Circle)
    + [CollisionPlane](#CollisionPlane)
    + [ContactBeginTouchEvent](#ContactBeginTouchEvent)
    + [ContactData](#ContactData)
    + [ContactEndTouchEvent](#ContactEndTouchEvent)
    + [ContactEvents](#ContactEvents)
    + [ContactHitEvent](#ContactHitEvent)
    + [CosSin](#CosSin)
    + [Counters](#Counters)
    + [CustomFilterFcn](#CustomFilterFcn)
    + [DebugDraw](#DebugDraw)
    + [DistanceInput](#DistanceInput)
    + [DistanceJointDef](#DistanceJointDef)
    + [DistanceOutput](#DistanceOutput)
    + [DynamicTree](#DynamicTree)
    + [EnqueueTaskCallback](#EnqueueTaskCallback)
    + [ExplosionDef](#ExplosionDef)
    + [Filter](#Filter)
    + [FilterJointDef](#FilterJointDef)
    + [FinishTaskCallback](#FinishTaskCallback)
    + [FreeFcn](#FreeFcn)
    + [FrictionCallback](#FrictionCallback)
    + [HexColor](#HexColor)
    + [Hull](#Hull)
    + [JointId](#JointId)
    + [JointType](#JointType)
    + [Manifold](#Manifold)
    + [ManifoldPoint](#ManifoldPoint)
    + [MassData](#MassData)
    + [Mat22](#Mat22)
    + [MotorJointDef](#MotorJointDef)
    + [MouseJointDef](#MouseJointDef)
    + [OverlapResultFcn](#OverlapResultFcn)
    + [Plane](#Plane)
    + [PlaneResult](#PlaneResult)
    + [PlaneResultFcn](#PlaneResultFcn)
    + [PlaneSolverResult](#PlaneSolverResult)
    + [Polygon](#Polygon)
    + [PreSolveFcn](#PreSolveFcn)
    + [PrismaticJointDef](#PrismaticJointDef)
    + [Profile](#Profile)
    + [QueryFilter](#QueryFilter)
    + [RayCastInput](#RayCastInput)
    + [RayResult](#RayResult)
    + [RestitutionCallback](#RestitutionCallback)
    + [RevoluteJointDef](#RevoluteJointDef)
    + [Rot](#Rot)
    + [Segment](#Segment)
    + [SegmentDistanceResult](#SegmentDistanceResult)
    + [SensorBeginTouchEvent](#SensorBeginTouchEvent)
    + [SensorEndTouchEvent](#SensorEndTouchEvent)
    + [SensorEvents](#SensorEvents)
    + [ShapeCastInput](#ShapeCastInput)
    + [ShapeCastPairInput](#ShapeCastPairInput)
    + [ShapeDef](#ShapeDef)
    + [ShapeId](#ShapeId)
    + [ShapeProxy](#ShapeProxy)
    + [ShapeType](#ShapeType)
    + [Simplex](#Simplex)
    + [SimplexCache](#SimplexCache)
    + [SimplexVertex](#SimplexVertex)
    + [SurfaceMaterial](#SurfaceMaterial)
    + [Sweep](#Sweep)
    + [TOIInput](#TOIInput)
    + [TOIOutput](#TOIOutput)
    + [TOIState](#TOIState)
    + [TaskCallback](#TaskCallback)
    + [Transform](#Transform)
    + [TreeQueryCallbackFcn](#TreeQueryCallbackFcn)
    + [TreeRayCastCallbackFcn](#TreeRayCastCallbackFcn)
    + [TreeShapeCastCallbackFcn](#TreeShapeCastCallbackFcn)
    + [TreeStats](#TreeStats)
    + [Vec2](#Vec2)
    + [Version](#Version)
    + [WeldJointDef](#WeldJointDef)
    + [WheelJointDef](#WheelJointDef)
    + [WorldDef](#WorldDef)
    + [WorldId](#WorldId)
  * [Constants](#pkg-Constants)
    + [EPSILON](#EPSILON)
    + [HASH\_INIT](#HASH_INIT)
    + [MAX\_POLYGON\_VERTICES](#MAX_POLYGON_VERTICES)
    + [Mat22\_zero](#Mat22_zero)
    + [PI](#PI)
    + [Rot\_identity](#Rot_identity)
    + [Transform\_identity](#Transform_identity)
    + [Vec2\_zero](#Vec2_zero)
    + [bodyTypeCount](#bodyTypeCount)
    + [emptySimplexCache](#emptySimplexCache)
    + [nullBodyId](#nullBodyId)
    + [nullChainId](#nullChainId)
    + [nullJointId](#nullJointId)
    + [nullShapeId](#nullShapeId)
    + [nullWorldId](#nullWorldId)
    + [shapeTypeCount](#shapeTypeCount)
  * [Procedures](#pkg-Procedures)
    + [AABB\_Center](#AABB_Center)
    + [AABB\_Contains](#AABB_Contains)
    + [AABB\_Extents](#AABB_Extents)
    + [AABB\_Overlaps](#AABB_Overlaps)
    + [AABB\_Union](#AABB_Union)
    + [Abs](#Abs)
    + [AbsFloat](#AbsFloat)
    + [AbsInt](#AbsInt)
    + [Add](#Add)
    + [Atan2](#Atan2)
    + [Body\_ApplyAngularImpulse](#Body_ApplyAngularImpulse)
    + [Body\_ApplyForce](#Body_ApplyForce)
    + [Body\_ApplyForceToCenter](#Body_ApplyForceToCenter)
    + [Body\_ApplyLinearImpulse](#Body_ApplyLinearImpulse)
    + [Body\_ApplyLinearImpulseToCenter](#Body_ApplyLinearImpulseToCenter)
    + [Body\_ApplyMassFromShapes](#Body_ApplyMassFromShapes)
    + [Body\_ApplyTorque](#Body_ApplyTorque)
    + [Body\_ComputeAABB](#Body_ComputeAABB)
    + [Body\_Disable](#Body_Disable)
    + [Body\_Enable](#Body_Enable)
    + [Body\_EnableContactEvents](#Body_EnableContactEvents)
    + [Body\_EnableHitEvents](#Body_EnableHitEvents)
    + [Body\_EnableSleep](#Body_EnableSleep)
    + [Body\_GetAngularDamping](#Body_GetAngularDamping)
    + [Body\_GetAngularVelocity](#Body_GetAngularVelocity)
    + [Body\_GetContactCapacity](#Body_GetContactCapacity)
    + [Body\_GetContactData](#Body_GetContactData)
    + [Body\_GetGravityScale](#Body_GetGravityScale)
    + [Body\_GetJointCount](#Body_GetJointCount)
    + [Body\_GetJoints](#Body_GetJoints)
    + [Body\_GetLinearDamping](#Body_GetLinearDamping)
    + [Body\_GetLinearVelocity](#Body_GetLinearVelocity)
    + [Body\_GetLocalCenterOfMass](#Body_GetLocalCenterOfMass)
    + [Body\_GetLocalPoint](#Body_GetLocalPoint)
    + [Body\_GetLocalPointVelocity](#Body_GetLocalPointVelocity)
    + [Body\_GetLocalVector](#Body_GetLocalVector)
    + [Body\_GetMass](#Body_GetMass)
    + [Body\_GetMassData](#Body_GetMassData)
    + [Body\_GetName](#Body_GetName)
    + [Body\_GetPosition](#Body_GetPosition)
    + [Body\_GetRotation](#Body_GetRotation)
    + [Body\_GetRotationalInertia](#Body_GetRotationalInertia)
    + [Body\_GetShapeCount](#Body_GetShapeCount)
    + [Body\_GetShapes](#Body_GetShapes)
    + [Body\_GetSleepThreshold](#Body_GetSleepThreshold)
    + [Body\_GetTransform](#Body_GetTransform)
    + [Body\_GetType](#Body_GetType)
    + [Body\_GetUserData](#Body_GetUserData)
    + [Body\_GetWorld](#Body_GetWorld)
    + [Body\_GetWorldCenterOfMass](#Body_GetWorldCenterOfMass)
    + [Body\_GetWorldPoint](#Body_GetWorldPoint)
    + [Body\_GetWorldPointVelocity](#Body_GetWorldPointVelocity)
    + [Body\_GetWorldVector](#Body_GetWorldVector)
    + [Body\_IsAwake](#Body_IsAwake)
    + [Body\_IsBullet](#Body_IsBullet)
    + [Body\_IsEnabled](#Body_IsEnabled)
    + [Body\_IsFixedRotation](#Body_IsFixedRotation)
    + [Body\_IsSleepEnabled](#Body_IsSleepEnabled)
    + [Body\_IsValid](#Body_IsValid)
    + [Body\_SetAngularDamping](#Body_SetAngularDamping)
    + [Body\_SetAngularVelocity](#Body_SetAngularVelocity)
    + [Body\_SetAwake](#Body_SetAwake)
    + [Body\_SetBullet](#Body_SetBullet)
    + [Body\_SetFixedRotation](#Body_SetFixedRotation)
    + [Body\_SetGravityScale](#Body_SetGravityScale)
    + [Body\_SetLinearDamping](#Body_SetLinearDamping)
    + [Body\_SetLinearVelocity](#Body_SetLinearVelocity)
    + [Body\_SetMassData](#Body_SetMassData)
    + [Body\_SetName](#Body_SetName)
    + [Body\_SetSleepThreshold](#Body_SetSleepThreshold)
    + [Body\_SetTargetTransform](#Body_SetTargetTransform)
    + [Body\_SetTransform](#Body_SetTransform)
    + [Body\_SetType](#Body_SetType)
    + [Body\_SetUserData](#Body_SetUserData)
    + [Chain\_GetFriction](#Chain_GetFriction)
    + [Chain\_GetMaterial](#Chain_GetMaterial)
    + [Chain\_GetRestitution](#Chain_GetRestitution)
    + [Chain\_GetSegmentCount](#Chain_GetSegmentCount)
    + [Chain\_GetSegments](#Chain_GetSegments)
    + [Chain\_GetWorld](#Chain_GetWorld)
    + [Chain\_IsValid](#Chain_IsValid)
    + [Chain\_SetFriction](#Chain_SetFriction)
    + [Chain\_SetMaterial](#Chain_SetMaterial)
    + [Chain\_SetRestitution](#Chain_SetRestitution)
    + [Clamp](#Clamp)
    + [ClampFloat](#ClampFloat)
    + [ClampInt](#ClampInt)
    + [ClipVector](#ClipVector)
    + [CollideCapsuleAndCircle](#CollideCapsuleAndCircle)
    + [CollideCapsules](#CollideCapsules)
    + [CollideChainSegmentAndCapsule](#CollideChainSegmentAndCapsule)
    + [CollideChainSegmentAndCircle](#CollideChainSegmentAndCircle)
    + [CollideChainSegmentAndPolygon](#CollideChainSegmentAndPolygon)
    + [CollideCircles](#CollideCircles)
    + [CollidePolygonAndCapsule](#CollidePolygonAndCapsule)
    + [CollidePolygonAndCircle](#CollidePolygonAndCircle)
    + [CollidePolygons](#CollidePolygons)
    + [CollideSegmentAndCapsule](#CollideSegmentAndCapsule)
    + [CollideSegmentAndCircle](#CollideSegmentAndCircle)
    + [CollideSegmentAndPolygon](#CollideSegmentAndPolygon)
    + [ComputeAngularVelocity](#ComputeAngularVelocity)
    + [ComputeCapsuleAABB](#ComputeCapsuleAABB)
    + [ComputeCapsuleMass](#ComputeCapsuleMass)
    + [ComputeCircleAABB](#ComputeCircleAABB)
    + [ComputeCircleMass](#ComputeCircleMass)
    + [ComputeCosSin](#ComputeCosSin)
    + [ComputeHull](#ComputeHull)
    + [ComputePolygonAABB](#ComputePolygonAABB)
    + [ComputePolygonMass](#ComputePolygonMass)
    + [ComputeRotationBetweenUnitVectors](#ComputeRotationBetweenUnitVectors)
    + [ComputeSegmentAABB](#ComputeSegmentAABB)
    + [CreateBody](#CreateBody)
    + [CreateCapsuleShape](#CreateCapsuleShape)
    + [CreateChain](#CreateChain)
    + [CreateCircleShape](#CreateCircleShape)
    + [CreateDistanceJoint](#CreateDistanceJoint)
    + [CreateFilterJoint](#CreateFilterJoint)
    + [CreateMotorJoint](#CreateMotorJoint)
    + [CreateMouseJoint](#CreateMouseJoint)
    + [CreatePolygonShape](#CreatePolygonShape)
    + [CreatePrismaticJoint](#CreatePrismaticJoint)
    + [CreateRevoluteJoint](#CreateRevoluteJoint)
    + [CreateSegmentShape](#CreateSegmentShape)
    + [CreateWeldJoint](#CreateWeldJoint)
    + [CreateWheelJoint](#CreateWheelJoint)
    + [CreateWorld](#CreateWorld)
    + [Cross](#Cross)
    + [CrossSV](#CrossSV)
    + [CrossVS](#CrossVS)
    + [DefaultBodyDef](#DefaultBodyDef)
    + [DefaultChainDef](#DefaultChainDef)
    + [DefaultDebugDraw](#DefaultDebugDraw)
    + [DefaultDistanceJointDef](#DefaultDistanceJointDef)
    + [DefaultExplosionDef](#DefaultExplosionDef)
    + [DefaultFilter](#DefaultFilter)
    + [DefaultFilterJointDef](#DefaultFilterJointDef)
    + [DefaultMotorJointDef](#DefaultMotorJointDef)
    + [DefaultMouseJointDef](#DefaultMouseJointDef)
    + [DefaultPrismaticJointDef](#DefaultPrismaticJointDef)
    + [DefaultQueryFilter](#DefaultQueryFilter)
    + [DefaultRevoluteJointDef](#DefaultRevoluteJointDef)
    + [DefaultShapeDef](#DefaultShapeDef)
    + [DefaultSurfaceMaterial](#DefaultSurfaceMaterial)
    + [DefaultWeldJointDef](#DefaultWeldJointDef)
    + [DefaultWheelJointDef](#DefaultWheelJointDef)
    + [DefaultWorldDef](#DefaultWorldDef)
    + [DestroyBody](#DestroyBody)
    + [DestroyChain](#DestroyChain)
    + [DestroyJoint](#DestroyJoint)
    + [DestroyShape](#DestroyShape)
    + [DestroyWorld](#DestroyWorld)
    + [Distance](#Distance)
    + [DistanceJoint\_EnableLimit](#DistanceJoint_EnableLimit)
    + [DistanceJoint\_EnableMotor](#DistanceJoint_EnableMotor)
    + [DistanceJoint\_EnableSpring](#DistanceJoint_EnableSpring)
    + [DistanceJoint\_GetCurrentLength](#DistanceJoint_GetCurrentLength)
    + [DistanceJoint\_GetLength](#DistanceJoint_GetLength)
    + [DistanceJoint\_GetMaxLength](#DistanceJoint_GetMaxLength)
    + [DistanceJoint\_GetMaxMotorForce](#DistanceJoint_GetMaxMotorForce)
    + [DistanceJoint\_GetMinLength](#DistanceJoint_GetMinLength)
    + [DistanceJoint\_GetMotorForce](#DistanceJoint_GetMotorForce)
    + [DistanceJoint\_GetMotorSpeed](#DistanceJoint_GetMotorSpeed)
    + [DistanceJoint\_GetSpringDampingRatio](#DistanceJoint_GetSpringDampingRatio)
    + [DistanceJoint\_GetSpringHertz](#DistanceJoint_GetSpringHertz)
    + [DistanceJoint\_IsLimitEnabled](#DistanceJoint_IsLimitEnabled)
    + [DistanceJoint\_IsMotorEnabled](#DistanceJoint_IsMotorEnabled)
    + [DistanceJoint\_IsSpringEnabled](#DistanceJoint_IsSpringEnabled)
    + [DistanceJoint\_SetLength](#DistanceJoint_SetLength)
    + [DistanceJoint\_SetLengthRange](#DistanceJoint_SetLengthRange)
    + [DistanceJoint\_SetMaxMotorForce](#DistanceJoint_SetMaxMotorForce)
    + [DistanceJoint\_SetMotorSpeed](#DistanceJoint_SetMotorSpeed)
    + [DistanceJoint\_SetSpringDampingRatio](#DistanceJoint_SetSpringDampingRatio)
    + [DistanceJoint\_SetSpringHertz](#DistanceJoint_SetSpringHertz)
    + [DistanceSquared](#DistanceSquared)
    + [Dot](#Dot)
    + [DynamicTree\_Create](#DynamicTree_Create)
    + [DynamicTree\_CreateProxy](#DynamicTree_CreateProxy)
    + [DynamicTree\_Destroy](#DynamicTree_Destroy)
    + [DynamicTree\_DestroyProxy](#DynamicTree_DestroyProxy)
    + [DynamicTree\_EnlargeProxy](#DynamicTree_EnlargeProxy)
    + [DynamicTree\_GetAABB](#DynamicTree_GetAABB)
    + [DynamicTree\_GetAreaRatio](#DynamicTree_GetAreaRatio)
    + [DynamicTree\_GetByteCount](#DynamicTree_GetByteCount)
    + [DynamicTree\_GetCategoryBits](#DynamicTree_GetCategoryBits)
    + [DynamicTree\_GetHeight](#DynamicTree_GetHeight)
    + [DynamicTree\_GetProxyCount](#DynamicTree_GetProxyCount)
    + [DynamicTree\_GetRootBounds](#DynamicTree_GetRootBounds)
    + [DynamicTree\_GetUserData](#DynamicTree_GetUserData)
    + [DynamicTree\_MoveProxy](#DynamicTree_MoveProxy)
    + [DynamicTree\_Query](#DynamicTree_Query)
    + [DynamicTree\_RayCast](#DynamicTree_RayCast)
    + [DynamicTree\_Rebuild](#DynamicTree_Rebuild)
    + [DynamicTree\_SetCategoryBits](#DynamicTree_SetCategoryBits)
    + [DynamicTree\_ShapeCast](#DynamicTree_ShapeCast)
    + [DynamicTree\_Validate](#DynamicTree_Validate)
    + [DynamicTree\_ValidateNoEnlarged](#DynamicTree_ValidateNoEnlarged)
    + [GetByteCount](#GetByteCount)
    + [GetInverse22](#GetInverse22)
    + [GetLengthAndNormalize](#GetLengthAndNormalize)
    + [GetLengthUnitsPerMeter](#GetLengthUnitsPerMeter)
    + [GetMilliseconds](#GetMilliseconds)
    + [GetMillisecondsAndReset](#GetMillisecondsAndReset)
    + [GetSweepTransform](#GetSweepTransform)
    + [GetTicks](#GetTicks)
    + [Hash](#Hash)
    + [ID\_EQUALS](#ID_EQUALS)
    + [IS\_NON\_NULL](#IS_NON_NULL)
    + [IS\_NULL](#IS_NULL)
    + [IntegrateRotation](#IntegrateRotation)
    + [InvMulRot](#InvMulRot)
    + [InvMulTransforms](#InvMulTransforms)
    + [InvRotateVector](#InvRotateVector)
    + [InvTransformPoint](#InvTransformPoint)
    + [IsNormalized](#IsNormalized)
    + [IsNormalizedRot](#IsNormalizedRot)
    + [IsValidAABB](#IsValidAABB)
    + [IsValidFloat](#IsValidFloat)
    + [IsValidPlane](#IsValidPlane)
    + [IsValidRay](#IsValidRay)
    + [IsValidRotation](#IsValidRotation)
    + [IsValidVec2](#IsValidVec2)
    + [Joint\_GetAngularSeparation](#Joint_GetAngularSeparation)
    + [Joint\_GetBodyA](#Joint_GetBodyA)
    + [Joint\_GetBodyB](#Joint_GetBodyB)
    + [Joint\_GetCollideConnected](#Joint_GetCollideConnected)
    + [Joint\_GetConstraintForce](#Joint_GetConstraintForce)
    + [Joint\_GetConstraintTorque](#Joint_GetConstraintTorque)
    + [Joint\_GetConstraintTuning](#Joint_GetConstraintTuning)
    + [Joint\_GetLinearSeparation](#Joint_GetLinearSeparation)
    + [Joint\_GetLocalAnchorA](#Joint_GetLocalAnchorA)
    + [Joint\_GetLocalAnchorB](#Joint_GetLocalAnchorB)
    + [Joint\_GetLocalAxisA](#Joint_GetLocalAxisA)
    + [Joint\_GetReferenceAngle](#Joint_GetReferenceAngle)
    + [Joint\_GetType](#Joint_GetType)
    + [Joint\_GetUserData](#Joint_GetUserData)
    + [Joint\_GetWorld](#Joint_GetWorld)
    + [Joint\_IsValid](#Joint_IsValid)
    + [Joint\_SetCollideConnected](#Joint_SetCollideConnected)
    + [Joint\_SetConstraintTuning](#Joint_SetConstraintTuning)
    + [Joint\_SetLocalAnchorA](#Joint_SetLocalAnchorA)
    + [Joint\_SetLocalAnchorB](#Joint_SetLocalAnchorB)
    + [Joint\_SetLocalAxisA](#Joint_SetLocalAxisA)
    + [Joint\_SetReferenceAngle](#Joint_SetReferenceAngle)
    + [Joint\_SetUserData](#Joint_SetUserData)
    + [Joint\_WakeBodies](#Joint_WakeBodies)
    + [LeftPerp](#LeftPerp)
    + [Length](#Length)
    + [LengthSquared](#LengthSquared)
    + [Lerp](#Lerp)
    + [LoadWorldId](#LoadWorldId)
    + [MakeAABB](#MakeAABB)
    + [MakeBox](#MakeBox)
    + [MakeOffsetBox](#MakeOffsetBox)
    + [MakeOffsetPolygon](#MakeOffsetPolygon)
    + [MakeOffsetProxy](#MakeOffsetProxy)
    + [MakeOffsetRoundedBox](#MakeOffsetRoundedBox)
    + [MakeOffsetRoundedPolygon](#MakeOffsetRoundedPolygon)
    + [MakePolygon](#MakePolygon)
    + [MakeProxy](#MakeProxy)
    + [MakeRot](#MakeRot)
    + [MakeRoundedBox](#MakeRoundedBox)
    + [MakeSquare](#MakeSquare)
    + [Max](#Max)
    + [MaxFloat](#MaxFloat)
    + [MaxInt](#MaxInt)
    + [Min](#Min)
    + [MinFloat](#MinFloat)
    + [MinInt](#MinInt)
    + [MotorJoint\_GetAngularOffset](#MotorJoint_GetAngularOffset)
    + [MotorJoint\_GetCorrectionFactor](#MotorJoint_GetCorrectionFactor)
    + [MotorJoint\_GetLinearOffset](#MotorJoint_GetLinearOffset)
    + [MotorJoint\_GetMaxForce](#MotorJoint_GetMaxForce)
    + [MotorJoint\_GetMaxTorque](#MotorJoint_GetMaxTorque)
    + [MotorJoint\_SetAngularOffset](#MotorJoint_SetAngularOffset)
    + [MotorJoint\_SetCorrectionFactor](#MotorJoint_SetCorrectionFactor)
    + [MotorJoint\_SetLinearOffset](#MotorJoint_SetLinearOffset)
    + [MotorJoint\_SetMaxForce](#MotorJoint_SetMaxForce)
    + [MotorJoint\_SetMaxTorque](#MotorJoint_SetMaxTorque)
    + [MouseJoint\_GetMaxForce](#MouseJoint_GetMaxForce)
    + [MouseJoint\_GetSpringDampingRatio](#MouseJoint_GetSpringDampingRatio)
    + [MouseJoint\_GetSpringHertz](#MouseJoint_GetSpringHertz)
    + [MouseJoint\_GetTarget](#MouseJoint_GetTarget)
    + [MouseJoint\_SetMaxForce](#MouseJoint_SetMaxForce)
    + [MouseJoint\_SetSpringDampingRatio](#MouseJoint_SetSpringDampingRatio)
    + [MouseJoint\_SetSpringHertz](#MouseJoint_SetSpringHertz)
    + [MouseJoint\_SetTarget](#MouseJoint_SetTarget)
    + [Mul](#Mul)
    + [MulAdd](#MulAdd)
    + [MulMV](#MulMV)
    + [MulRot](#MulRot)
    + [MulSV](#MulSV)
    + [MulSub](#MulSub)
    + [MulTransforms](#MulTransforms)
    + [NLerp](#NLerp)
    + [Neg](#Neg)
    + [Normalize](#Normalize)
    + [NormalizeChecked](#NormalizeChecked)
    + [NormalizeRot](#NormalizeRot)
    + [PlaneSeparation](#PlaneSeparation)
    + [PointInCapsule](#PointInCapsule)
    + [PointInCircle](#PointInCircle)
    + [PointInPolygon](#PointInPolygon)
    + [PrismaticJoint\_EnableLimit](#PrismaticJoint_EnableLimit)
    + [PrismaticJoint\_EnableMotor](#PrismaticJoint_EnableMotor)
    + [PrismaticJoint\_EnableSpring](#PrismaticJoint_EnableSpring)
    + [PrismaticJoint\_GetLowerLimit](#PrismaticJoint_GetLowerLimit)
    + [PrismaticJoint\_GetMaxMotorForce](#PrismaticJoint_GetMaxMotorForce)
    + [PrismaticJoint\_GetMotorForce](#PrismaticJoint_GetMotorForce)
    + [PrismaticJoint\_GetMotorSpeed](#PrismaticJoint_GetMotorSpeed)
    + [PrismaticJoint\_GetSpeed](#PrismaticJoint_GetSpeed)
    + [PrismaticJoint\_GetSpringDampingRatio](#PrismaticJoint_GetSpringDampingRatio)
    + [PrismaticJoint\_GetSpringHertz](#PrismaticJoint_GetSpringHertz)
    + [PrismaticJoint\_GetTargetTranslation](#PrismaticJoint_GetTargetTranslation)
    + [PrismaticJoint\_GetTranslation](#PrismaticJoint_GetTranslation)
    + [PrismaticJoint\_GetUpperLimit](#PrismaticJoint_GetUpperLimit)
    + [PrismaticJoint\_IsLimitEnabled](#PrismaticJoint_IsLimitEnabled)
    + [PrismaticJoint\_IsMotorEnabled](#PrismaticJoint_IsMotorEnabled)
    + [PrismaticJoint\_IsSpringEnabled](#PrismaticJoint_IsSpringEnabled)
    + [PrismaticJoint\_SetLimits](#PrismaticJoint_SetLimits)
    + [PrismaticJoint\_SetMaxMotorForce](#PrismaticJoint_SetMaxMotorForce)
    + [PrismaticJoint\_SetMotorSpeed](#PrismaticJoint_SetMotorSpeed)
    + [PrismaticJoint\_SetSpringDampingRatio](#PrismaticJoint_SetSpringDampingRatio)
    + [PrismaticJoint\_SetSpringHertz](#PrismaticJoint_SetSpringHertz)
    + [PrismaticJoint\_SetTargetTranslation](#PrismaticJoint_SetTargetTranslation)
    + [RayCastCapsule](#RayCastCapsule)
    + [RayCastCircle](#RayCastCircle)
    + [RayCastPolygon](#RayCastPolygon)
    + [RayCastSegment](#RayCastSegment)
    + [RelativeAngle](#RelativeAngle)
    + [RevoluteJoint\_EnableLimit](#RevoluteJoint_EnableLimit)
    + [RevoluteJoint\_EnableMotor](#RevoluteJoint_EnableMotor)
    + [RevoluteJoint\_EnableSpring](#RevoluteJoint_EnableSpring)
    + [RevoluteJoint\_GetAngle](#RevoluteJoint_GetAngle)
    + [RevoluteJoint\_GetLowerLimit](#RevoluteJoint_GetLowerLimit)
    + [RevoluteJoint\_GetMaxMotorTorque](#RevoluteJoint_GetMaxMotorTorque)
    + [RevoluteJoint\_GetMotorSpeed](#RevoluteJoint_GetMotorSpeed)
    + [RevoluteJoint\_GetMotorTorque](#RevoluteJoint_GetMotorTorque)
    + [RevoluteJoint\_GetSpringDampingRatio](#RevoluteJoint_GetSpringDampingRatio)
    + [RevoluteJoint\_GetSpringHertz](#RevoluteJoint_GetSpringHertz)
    + [RevoluteJoint\_GetTargetAngle](#RevoluteJoint_GetTargetAngle)
    + [RevoluteJoint\_GetUpperLimit](#RevoluteJoint_GetUpperLimit)
    + [RevoluteJoint\_IsLimitEnabled](#RevoluteJoint_IsLimitEnabled)
    + [RevoluteJoint\_IsMotorEnabled](#RevoluteJoint_IsMotorEnabled)
    + [RevoluteJoint\_IsSpringEnabled](#RevoluteJoint_IsSpringEnabled)
    + [RevoluteJoint\_SetLimits](#RevoluteJoint_SetLimits)
    + [RevoluteJoint\_SetMaxMotorTorque](#RevoluteJoint_SetMaxMotorTorque)
    + [RevoluteJoint\_SetMotorSpeed](#RevoluteJoint_SetMotorSpeed)
    + [RevoluteJoint\_SetSpringDampingRatio](#RevoluteJoint_SetSpringDampingRatio)
    + [RevoluteJoint\_SetSpringHertz](#RevoluteJoint_SetSpringHertz)
    + [RevoluteJoint\_SetTargetAngle](#RevoluteJoint_SetTargetAngle)
    + [RightPerp](#RightPerp)
    + [Rot\_GetAngle](#Rot_GetAngle)
    + [Rot\_GetXAxis](#Rot_GetXAxis)
    + [Rot\_GetYAxis](#Rot_GetYAxis)
    + [RotateVector](#RotateVector)
    + [SegmentDistance](#SegmentDistance)
    + [SetAllocator](#SetAllocator)
    + [SetAssertFcn](#SetAssertFcn)
    + [SetLengthUnitsPerMeter](#SetLengthUnitsPerMeter)
    + [ShapeCast](#ShapeCast)
    + [ShapeCastCapsule](#ShapeCastCapsule)
    + [ShapeCastCircle](#ShapeCastCircle)
    + [ShapeCastPolygon](#ShapeCastPolygon)
    + [ShapeCastSegment](#ShapeCastSegment)
    + [ShapeDistance](#ShapeDistance)
    + [Shape\_AreContactEventsEnabled](#Shape_AreContactEventsEnabled)
    + [Shape\_AreHitEventsEnabled](#Shape_AreHitEventsEnabled)
    + [Shape\_ArePreSolveEventsEnabled](#Shape_ArePreSolveEventsEnabled)
    + [Shape\_AreSensorEventsEnabled](#Shape_AreSensorEventsEnabled)
    + [Shape\_EnableContactEvents](#Shape_EnableContactEvents)
    + [Shape\_EnableHitEvents](#Shape_EnableHitEvents)
    + [Shape\_EnablePreSolveEvents](#Shape_EnablePreSolveEvents)
    + [Shape\_EnableSensorEvents](#Shape_EnableSensorEvents)
    + [Shape\_GetAABB](#Shape_GetAABB)
    + [Shape\_GetBody](#Shape_GetBody)
    + [Shape\_GetCapsule](#Shape_GetCapsule)
    + [Shape\_GetChainSegment](#Shape_GetChainSegment)
    + [Shape\_GetCircle](#Shape_GetCircle)
    + [Shape\_GetClosestPoint](#Shape_GetClosestPoint)
    + [Shape\_GetContactCapacity](#Shape_GetContactCapacity)
    + [Shape\_GetContactData](#Shape_GetContactData)
    + [Shape\_GetDensity](#Shape_GetDensity)
    + [Shape\_GetFilter](#Shape_GetFilter)
    + [Shape\_GetFriction](#Shape_GetFriction)
    + [Shape\_GetMassData](#Shape_GetMassData)
    + [Shape\_GetMaterial](#Shape_GetMaterial)
    + [Shape\_GetParentChain](#Shape_GetParentChain)
    + [Shape\_GetPolygon](#Shape_GetPolygon)
    + [Shape\_GetRestitution](#Shape_GetRestitution)
    + [Shape\_GetSegment](#Shape_GetSegment)
    + [Shape\_GetSensorCapacity](#Shape_GetSensorCapacity)
    + [Shape\_GetSensorOverlaps](#Shape_GetSensorOverlaps)
    + [Shape\_GetSurfaceMaterial](#Shape_GetSurfaceMaterial)
    + [Shape\_GetType](#Shape_GetType)
    + [Shape\_GetUserData](#Shape_GetUserData)
    + [Shape\_GetWorld](#Shape_GetWorld)
    + [Shape\_IsSensor](#Shape_IsSensor)
    + [Shape\_IsValid](#Shape_IsValid)
    + [Shape\_RayCast](#Shape_RayCast)
    + [Shape\_SetCapsule](#Shape_SetCapsule)
    + [Shape\_SetCircle](#Shape_SetCircle)
    + [Shape\_SetDensity](#Shape_SetDensity)
    + [Shape\_SetFilter](#Shape_SetFilter)
    + [Shape\_SetFriction](#Shape_SetFriction)
    + [Shape\_SetMaterial](#Shape_SetMaterial)
    + [Shape\_SetPolygon](#Shape_SetPolygon)
    + [Shape\_SetRestitution](#Shape_SetRestitution)
    + [Shape\_SetSegment](#Shape_SetSegment)
    + [Shape\_SetSurfaceMaterial](#Shape_SetSurfaceMaterial)
    + [Shape\_SetUserData](#Shape_SetUserData)
    + [Shape\_TestPoint](#Shape_TestPoint)
    + [Solve22](#Solve22)
    + [SolvePlanes](#SolvePlanes)
    + [StoreWorldId](#StoreWorldId)
    + [Sub](#Sub)
    + [TimeOfImpact](#TimeOfImpact)
    + [TransformPoint](#TransformPoint)
    + [TransformPolygon](#TransformPolygon)
    + [UnwindAngle](#UnwindAngle)
    + [ValidateHull](#ValidateHull)
    + [WeldJoint\_GetAngularDampingRatio](#WeldJoint_GetAngularDampingRatio)
    + [WeldJoint\_GetAngularHertz](#WeldJoint_GetAngularHertz)
    + [WeldJoint\_GetLinearDampingRatio](#WeldJoint_GetLinearDampingRatio)
    + [WeldJoint\_GetLinearHertz](#WeldJoint_GetLinearHertz)
    + [WeldJoint\_SetAngularDampingRatio](#WeldJoint_SetAngularDampingRatio)
    + [WeldJoint\_SetAngularHertz](#WeldJoint_SetAngularHertz)
    + [WeldJoint\_SetLinearDampingRatio](#WeldJoint_SetLinearDampingRatio)
    + [WeldJoint\_SetLinearHertz](#WeldJoint_SetLinearHertz)
    + [WheelJoint\_EnableLimit](#WheelJoint_EnableLimit)
    + [WheelJoint\_EnableMotor](#WheelJoint_EnableMotor)
    + [WheelJoint\_EnableSpring](#WheelJoint_EnableSpring)
    + [WheelJoint\_GetLowerLimit](#WheelJoint_GetLowerLimit)
    + [WheelJoint\_GetMaxMotorTorque](#WheelJoint_GetMaxMotorTorque)
    + [WheelJoint\_GetMotorSpeed](#WheelJoint_GetMotorSpeed)
    + [WheelJoint\_GetMotorTorque](#WheelJoint_GetMotorTorque)
    + [WheelJoint\_GetSpringDampingRatio](#WheelJoint_GetSpringDampingRatio)
    + [WheelJoint\_GetSpringHertz](#WheelJoint_GetSpringHertz)
    + [WheelJoint\_GetUpperLimit](#WheelJoint_GetUpperLimit)
    + [WheelJoint\_IsLimitEnabled](#WheelJoint_IsLimitEnabled)
    + [WheelJoint\_IsMotorEnabled](#WheelJoint_IsMotorEnabled)
    + [WheelJoint\_IsSpringEnabled](#WheelJoint_IsSpringEnabled)
    + [WheelJoint\_SetLimits](#WheelJoint_SetLimits)
    + [WheelJoint\_SetMaxMotorTorque](#WheelJoint_SetMaxMotorTorque)
    + [WheelJoint\_SetMotorSpeed](#WheelJoint_SetMotorSpeed)
    + [WheelJoint\_SetSpringDampingRatio](#WheelJoint_SetSpringDampingRatio)
    + [WheelJoint\_SetSpringHertz](#WheelJoint_SetSpringHertz)
    + [World\_CastMover](#World_CastMover)
    + [World\_CastRay](#World_CastRay)
    + [World\_CastRayClosest](#World_CastRayClosest)
    + [World\_CastShape](#World_CastShape)
    + [World\_CollideMover](#World_CollideMover)
    + [World\_Draw](#World_Draw)
    + [World\_DumpMemoryStats](#World_DumpMemoryStats)
    + [World\_EnableContinuous](#World_EnableContinuous)
    + [World\_EnableSleeping](#World_EnableSleeping)
    + [World\_EnableSpeculative](#World_EnableSpeculative)
    + [World\_EnableWarmStarting](#World_EnableWarmStarting)
    + [World\_Explode](#World_Explode)
    + [World\_GetAwakeBodyCount](#World_GetAwakeBodyCount)
    + [World\_GetBodyEvents](#World_GetBodyEvents)
    + [World\_GetContactEvents](#World_GetContactEvents)
    + [World\_GetCounters](#World_GetCounters)
    + [World\_GetGravity](#World_GetGravity)
    + [World\_GetHitEventThreshold](#World_GetHitEventThreshold)
    + [World\_GetMaximumLinearSpeed](#World_GetMaximumLinearSpeed)
    + [World\_GetProfile](#World_GetProfile)
    + [World\_GetRestitutionThreshold](#World_GetRestitutionThreshold)
    + [World\_GetSensorEvents](#World_GetSensorEvents)
    + [World\_GetUserData](#World_GetUserData)
    + [World\_IsContinuousEnabled](#World_IsContinuousEnabled)
    + [World\_IsSleepingEnabled](#World_IsSleepingEnabled)
    + [World\_IsValid](#World_IsValid)
    + [World\_IsWarmStartingEnabled](#World_IsWarmStartingEnabled)
    + [World\_OverlapAABB](#World_OverlapAABB)
    + [World\_OverlapShape](#World_OverlapShape)
    + [World\_RebuildStaticTree](#World_RebuildStaticTree)
    + [World\_SetContactTuning](#World_SetContactTuning)
    + [World\_SetCustomFilterCallback](#World_SetCustomFilterCallback)
    + [World\_SetFrictionCallback](#World_SetFrictionCallback)
    + [World\_SetGravity](#World_SetGravity)
    + [World\_SetHitEventThreshold](#World_SetHitEventThreshold)
    + [World\_SetMaximumLinearSpeed](#World_SetMaximumLinearSpeed)
    + [World\_SetPreSolveCallback](#World_SetPreSolveCallback)
    + [World\_SetRestitutionCallback](#World_SetRestitutionCallback)
    + [World\_SetRestitutionThreshold](#World_SetRestitutionThreshold)
    + [World\_SetUserData](#World_SetUserData)
    + [World\_Step](#World_Step)
    + [Yield](#Yield)
    + [b2SpringDamper](#b2SpringDamper)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [IsValid](#IsValid)
  * [Source Files](#pkg-source-files)



[![Odin](https://odin-lang.org/logo.svg)](https://odin-lang.org)

The Data-Oriented Language for Sane Software Development.

#### Resources

* [Docs](https://odin-lang.org/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](https://odin-lang.org/news)


#### Community

* [GitHub](https://github.com/odin-lang/Odin)
* [Forum](https://forum.odin-lang.org)
* [Discord](https://discord.com/invite/sVBPHEv)
* [Twitch](https://www.twitch.tv/ginger_bill)
* [YouTube](https://www.youtube.com/channel/UCUSck1dOH7VKmG4lRW7tZXg)
* [Showcase](https://odin-lang.org/showcase)


#### Contribute

* [Issues](https://github.com/odin-lang/Odin/issues)
* [Donate](https://www.patreon.com/gingerbill)

© 2016–2023 Ginger Bill